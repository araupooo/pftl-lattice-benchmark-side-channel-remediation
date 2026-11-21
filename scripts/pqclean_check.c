/* pqclean_check.c — same non-reduced-pk battery as input_check.c, but against
 * the PQClean archived snapshot's ML-KEM-768/clean implementation, to
 * reproduce the "108/112/116 accepted" baseline shape reported for the
 * RUSTSEC-2026-0585 / KyberSlash-era PQClean code.
 *
 * Build (from the pack root; paths relative to pack root):
 *   cc -O2 -std=c11 -Iwork/pqclean/crypto_kem/ml-kem-768/clean \
 *      -Iwork/pqclean/common -o work/measure/pqclean_check \
 *      work/measure/pqclean_check.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/cbd.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/indcpa.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/kem.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/ntt.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/poly.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/polyvec.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/reduce.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/symmetric-shake.c \
 *      work/pqclean/crypto_kem/ml-kem-768/clean/verify.c \
 *      work/pqclean/common/fips202.c work/pqclean/common/randombytes.c
 * Run:
 *   ./work/measure/pqclean_check > work/measure/pqclean-check.log
 *
 * NOTE: PQClean's API has no derand keypair/encaps, so the keypair here is
 * random (from /dev/urandom via common/randombytes.c); the MUTATIONS are
 * deterministic (fixed xorshift seeds), and the accept/reject counts are the
 * reported result. "Accept" = crypto_kem_enc returns 0.
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "api.h"

#define Q 3329
#define NMUT 20
#define NCOEFF_MUT 4
#define K 3	/* ML-KEM-768 */

static uint64_t rng_state = 0x123456789abcdefULL;
static uint64_t rng_next(void) {
	uint64_t x = rng_state;
	x ^= x >> 12; x ^= x << 25; x ^= x >> 27;
	rng_state = x;
	return x * 0x2545F4914F6CDD1DULL;
}

static void poly_decode12(const uint8_t *in, uint16_t *out) {
	for (int i = 0; i < 128; i++) {
		out[2 * i]     = (uint16_t)(in[3 * i] | ((in[3 * i + 1] & 0x0f) << 8));
		out[2 * i + 1] = (uint16_t)((in[3 * i + 1] >> 4) | (in[3 * i + 2] << 4));
	}
}

static void poly_encode12(const uint16_t *in, uint8_t *out) {
	for (int i = 0; i < 128; i++) {
		out[3 * i]     = (uint8_t)(in[2 * i] & 0xff);
		out[3 * i + 1] = (uint8_t)(((in[2 * i] >> 8) & 0x0f) | ((in[2 * i + 1] & 0x0f) << 4));
		out[3 * i + 2] = (uint8_t)((in[2 * i + 1] >> 4) & 0xff);
	}
}

/* pk layout (FIPS 203 §7.1, verified against the official KAT: rho is the
 * LAST 32 bytes): pk = t_hat || rho. t_hat starts at byte 0. */
/* Indices of the coefficients mutated by the most recent unreduce_pk call,
 * printed per trial so the mutation placement is auditable (t_hat coeffs
 * are 0..767; rho bytes are never touched). */
static int mutated_idx[NCOEFF_MUT];

static int unreduce_pk(uint8_t *pk, int ncoeff, uint64_t seed) {
	int mutated = 0;
	int total_coeffs = 256 * K;
	rng_state = seed;
	for (int attempt = 0; attempt < 200 && mutated < ncoeff; attempt++) {
		int idx = (int)(rng_next() % (uint64_t)total_coeffs);
		int poly = idx / 256;
		int pos = idx % 256;
		uint8_t *poly_bytes = pk + poly * 384;
		uint16_t coeffs[256];
		poly_decode12(poly_bytes, coeffs);
		if (coeffs[pos] <= 766) {
			coeffs[pos] += Q;
			poly_encode12(coeffs, poly_bytes);
			mutated_idx[mutated] = idx;
			mutated++;
		}
	}
	return mutated;
}

int main(void) {
	printf("pqclean_check — PQClean snapshot ML-KEM-768/clean — q=3329, %d mutated keys, %d coeffs/key\n",
	       NMUT, NCOEFF_MUT);
	uint8_t pk[PQCLEAN_MLKEM768_CLEAN_CRYPTO_PUBLICKEYBYTES];
	uint8_t sk[PQCLEAN_MLKEM768_CLEAN_CRYPTO_SECRETKEYBYTES];
	uint8_t ct[PQCLEAN_MLKEM768_CLEAN_CRYPTO_CIPHERTEXTBYTES];
	uint8_t ss[PQCLEAN_MLKEM768_CLEAN_CRYPTO_BYTES];
	uint8_t ss_d[PQCLEAN_MLKEM768_CLEAN_CRYPTO_BYTES];
	uint8_t pk_mut[PQCLEAN_MLKEM768_CLEAN_CRYPTO_PUBLICKEYBYTES];

	if (PQCLEAN_MLKEM768_CLEAN_crypto_kem_keypair(pk, sk) != 0) {
		fprintf(stderr, "keypair failed\n"); return 1;
	}
	int rc = PQCLEAN_MLKEM768_CLEAN_crypto_kem_enc(ct, ss, pk);
	printf("control valid-key enc: %s\n", rc == 0 ? "ACCEPT" : "REJECT(error)");
	if (rc == 0) {
		rc = PQCLEAN_MLKEM768_CLEAN_crypto_kem_dec(ss_d, ct, sk);
		printf("control valid-key dec: rc=%s ss_match=%s\n",
		       rc == 0 ? "SUCCESS" : "ERROR",
		       memcmp(ss, ss_d, sizeof(ss)) == 0 ? "yes" : "no");
	}

	int accepted = 0, ss_match = 0, total_mutated = 0;
	for (int trial = 0; trial < NMUT; trial++) {
		memcpy(pk_mut, pk, sizeof(pk));
		int nmut = unreduce_pk(pk_mut, NCOEFF_MUT,
		                       0xdeadbeefULL + (uint64_t)trial * 0x9e3779b97f4a7c15ULL);
		total_mutated += nmut;
		int differs = memcmp(pk_mut, pk, sizeof(pk)) != 0;
		rc = PQCLEAN_MLKEM768_CLEAN_crypto_kem_enc(ct, ss, pk_mut);
		int match = 0;
		if (rc == 0) {
			accepted++;
			int rc2 = PQCLEAN_MLKEM768_CLEAN_crypto_kem_dec(ss_d, ct, sk);
			if (rc2 == 0 && memcmp(ss, ss_d, sizeof(ss)) == 0) { match = 1; ss_match++; }
		}
		printf("mutated-key trial %2d: coeffs_unreduced=%d coeff_idx=[%d,%d,%d,%d] pk_bytes_differ=%s enc=%s dec_ss_matches_original_sk=%s\n",
		       trial, nmut, mutated_idx[0], mutated_idx[1], mutated_idx[2], mutated_idx[3],
		       differs ? "yes" : "no",
		       rc == 0 ? "ACCEPT" : "REJECT(error)", match ? "yes" : "no");
	}
	printf("SUMMARY PQClean ML-KEM-768/clean non-reduced pk: enc accepted %d/%d, dec ss matched original sk %d/%d, total coeffs unreduced %d\n",
	       accepted, NMUT, ss_match, NMUT, total_mutated);
	return 0;
}
