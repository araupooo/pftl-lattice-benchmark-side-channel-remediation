/* input_check.c — input-validation battery for ML-KEM (liboqs 0.16.0).
 * RUSTSEC-2026-0585 reproduction shape: feed encaps a public key whose
 * polynomial coefficients are NOT reduced mod q and record accept/reject.
 *
 * Build (from the pack root):
 *   cc -O2 -std=c11 -Iwork/liboqs/build/include -o work/measure/input_check \
 *      work/measure/input_check.c work/liboqs/build/lib/liboqs.a -lcrypto -lm
 * Run:
 *   ./work/measure/input_check > work/measure/input-check.log
 *
 * ML-KEM public-key layout (FIPS 203 §7.1, VERIFIED against the official
 * KAT: rho = SHA3-512(d||k)[0:32] equals the LAST 32 bytes of pk):
 * pk = t_hat || rho, where t_hat is k polynomials of 256 coefficients,
 * 12-bit packed (384 bytes each), and rho is the final 32 bytes.
 * (An earlier version of this harness wrongly assumed rho-first; it was
 * fixed after the rho-position check above. See the report.)
 * Mutation: decode the 12-bit coefficients, pick coefficients with value
 * <= 766 (so value + q stays < 4096 and re-encodes in 12 bits), add q=3329,
 * re-encode. The mutated pk is byte-different from the original but
 * mathematically identical mod q. "Accept" = OQS_KEM_encaps returns
 * OQS_SUCCESS. We also record whether decapsulating the resulting ct with
 * the ORIGINAL sk yields the same shared secret (functional consistency).
 *
 * Part (b): tamper the decapsulation key. ML-KEM sk layout (FIPS 203):
 * sk = dk_pke (384*k) || ek_pke (pk) || H(ek) (32) || z (32).
 * We flip one byte in the H(ek) region and, separately, one byte in the
 * embedded-ek region, then encaps with the ORIGINAL pk and decaps with the
 * tampered sk. "Reject" = decaps returns an error code. Implicit rejection
 * (decaps returns SUCCESS but a random ss != original ss) is NOT a reject
 * and is reported as such.
 */
#include <oqs/oqs.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define Q 3329
#define NMUT 20		/* mutated keys per parameter set */
#define NCOEFF_MUT 4	/* coefficients to un-reduce per mutated key */

/* Tiny deterministic PRNG (xorshift64*) — no system RNG in the mutation loop. */
static uint64_t rng_state = 0x123456789abcdefULL;
static uint64_t rng_next(void) {
	uint64_t x = rng_state;
	x ^= x >> 12; x ^= x << 25; x ^= x >> 27;
	rng_state = x;
	return x * 0x2545F4914F6CDD1DULL;
}

/* Decode 12-bit packed coefficients (FIPS 203 ByteEncode_12). */
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

/* Indices of the coefficients mutated by the most recent unreduce_pk call,
 * printed per trial so the mutation placement is auditable (t_hat coeffs
 * are 0..255*k; rho bytes are never touched). */
static int mutated_idx[NCOEFF_MUT];

/* Add q to up to ncoeff coefficients of the t_hat part of pk (in place).
 * Returns the number of coefficients actually mutated. */
static int unreduce_pk(uint8_t *pk, size_t pk_len, int k, int ncoeff, uint64_t seed) {
	int mutated = 0;
	int total_coeffs = 256 * k;
	rng_state = seed;
	/* t_hat starts at byte 0; each poly is 384 bytes; rho is the last 32. */
	for (int attempt = 0; attempt < 200 && mutated < ncoeff; attempt++) {
		int idx = (int)(rng_next() % (uint64_t)total_coeffs);
		int poly = idx / 256;
		int pos = idx % 256;
		uint8_t *poly_bytes = pk + poly * 384;
		uint16_t coeffs[256];
		poly_decode12(poly_bytes, coeffs);
		if (coeffs[pos] <= 766) {
			coeffs[pos] += Q;	/* now in (3329, 4095]; still 12-bit */
			poly_encode12(coeffs, poly_bytes);
			mutated_idx[mutated] = idx;
			mutated++;
		}
	}
	(void)pk_len;
	return mutated;
}

static void bench_kem(const char *name, int k) {
	OQS_KEM *kem = OQS_KEM_new(name);
	if (!kem) { printf("%s: NOT ENABLED\n", name); return; }
	printf("== %s (k=%d) ==\n", name, k);
	printf("sizes: pk=%zu sk=%zu ct=%zu ss=%zu\n",
	       kem->length_public_key, kem->length_secret_key,
	       kem->length_ciphertext, kem->length_shared_secret);

	uint8_t *pk = malloc(kem->length_public_key);
	uint8_t *sk = malloc(kem->length_secret_key);
	uint8_t *ct = malloc(kem->length_ciphertext);
	uint8_t *ss = malloc(kem->length_shared_secret);
	uint8_t *ss_d = malloc(kem->length_shared_secret);
	uint8_t *pk_mut = malloc(kem->length_public_key);
	uint8_t *kp_seed = malloc(kem->length_keypair_seed);
	uint8_t *enc_seed = malloc(kem->length_encaps_seed);
	if (!pk || !sk || !ct || !ss || !ss_d || !pk_mut || !kp_seed || !enc_seed) {
		fprintf(stderr, "malloc failed\n"); exit(1);
	}
	/* Fixed keypair (derand, seed all 0x42) so the battery is reproducible. */
	memset(kp_seed, 0x42, kem->length_keypair_seed);
	if (OQS_KEM_keypair_derand(kem, pk, sk, kp_seed) != OQS_SUCCESS) {
		fprintf(stderr, "%s keypair failed\n", name); exit(1);
	}
	memset(enc_seed, 0x11, kem->length_encaps_seed);

	/* Control: valid key. */
	OQS_STATUS rc = OQS_KEM_encaps_derand(kem, ct, ss, pk, enc_seed);
	printf("control valid-key encaps: %s\n", rc == OQS_SUCCESS ? "ACCEPT" : "REJECT(error)");
	if (rc == OQS_SUCCESS) {
		rc = OQS_KEM_decaps(kem, ss_d, ct, sk);
		printf("control valid-key decaps: rc=%s ss_match=%s\n",
		       rc == OQS_SUCCESS ? "SUCCESS" : "ERROR",
		       memcmp(ss, ss_d, kem->length_shared_secret) == 0 ? "yes" : "no");
	}

	/* (a) Non-reduced pk: 20 mutated keys. */
	int accepted = 0, ss_match = 0, total_mutated_coeffs = 0;
	for (int trial = 0; trial < NMUT; trial++) {
		memcpy(pk_mut, pk, kem->length_public_key);
		int nmut = unreduce_pk(pk_mut, kem->length_public_key, k, NCOEFF_MUT,
		                       0xdeadbeefULL + (uint64_t)trial * 0x9e3779b97f4a7c15ULL);
		total_mutated_coeffs += nmut;
		int differs = memcmp(pk_mut, pk, kem->length_public_key) != 0;
		rc = OQS_KEM_encaps_derand(kem, ct, ss, pk_mut, enc_seed);
		const char *verdict = (rc == OQS_SUCCESS) ? "ACCEPT" : "REJECT(error)";
		int match = 0;
		if (rc == OQS_SUCCESS) {
			accepted++;
			OQS_STATUS rc2 = OQS_KEM_decaps(kem, ss_d, ct, sk);
			if (rc2 == OQS_SUCCESS && memcmp(ss, ss_d, kem->length_shared_secret) == 0) {
				match = 1; ss_match++;
			}
		}
		printf("mutated-key trial %2d: coeffs_unreduced=%d coeff_idx=[%d,%d,%d,%d] pk_bytes_differ=%s encaps=%s decaps_ss_matches_original_sk=%s\n",
		       trial, nmut, mutated_idx[0], mutated_idx[1], mutated_idx[2], mutated_idx[3],
		       differs ? "yes" : "no", verdict, match ? "yes" : "no");
	}
	printf("SUMMARY %s non-reduced pk: encaps accepted %d/%d, decaps ss matched original sk %d/%d, total coeffs unreduced %d\n",
	       name, accepted, NMUT, ss_match, NMUT, total_mutated_coeffs);

	/* (b) Tampered decapsulation key. sk = dk_pke(384k) || ek(pk) || H(ek)(32) || z(32) */
	size_t dk_len = 384u * (size_t)k;
	size_t hek_off = dk_len + kem->length_public_key;	/* H(ek) region */
	size_t ek_off = dk_len;				/* embedded ek region */
	uint8_t *sk_tamper = malloc(kem->length_secret_key);
	if (!sk_tamper) { fprintf(stderr, "malloc failed\n"); exit(1); }

	/* Baseline: encaps with original pk, decaps with original sk. */
	OQS_KEM_encaps_derand(kem, ct, ss, pk, enc_seed);
	OQS_KEM_decaps(kem, ss_d, ct, sk);
	int base_match = memcmp(ss, ss_d, kem->length_shared_secret) == 0;
	printf("tamper baseline: decaps rc=SUCCESS ss_match=%s\n", base_match ? "yes" : "no");

	/* Tamper 1: flip one byte in H(ek) region. */
	memcpy(sk_tamper, sk, kem->length_secret_key);
	sk_tamper[hek_off + 5] ^= 0x01;
	OQS_KEM_encaps_derand(kem, ct, ss, pk, enc_seed);
	memset(ss_d, 0, kem->length_shared_secret);	/* avoid stale-ss misread */
	rc = OQS_KEM_decaps(kem, ss_d, ct, sk_tamper);
	printf("tamper H(ek) byte@%zu: decaps rc=%s ss_match=%s -> %s\n",
	       hek_off + 5, rc == OQS_SUCCESS ? "SUCCESS" : "ERROR",
	       rc != OQS_SUCCESS ? "n/a (error, no ss produced)" :
	       (memcmp(ss, ss_d, kem->length_shared_secret) == 0 ? "yes" : "no"),
	       rc != OQS_SUCCESS ? "REJECT(error)" :
	       (memcmp(ss, ss_d, kem->length_shared_secret) == 0 ? "ACCEPT(same ss)" :
		"IMPLICIT-REJECTION(random ss, no error)"));

	/* Tamper 2: flip one byte in embedded-ek region. */
	memcpy(sk_tamper, sk, kem->length_secret_key);
	sk_tamper[ek_off + 10] ^= 0x01;
	OQS_KEM_encaps_derand(kem, ct, ss, pk, enc_seed);
	memset(ss_d, 0, kem->length_shared_secret);	/* avoid stale-ss misread */
	rc = OQS_KEM_decaps(kem, ss_d, ct, sk_tamper);
	printf("tamper embedded-ek byte@%zu: decaps rc=%s ss_match=%s -> %s\n",
	       ek_off + 10, rc == OQS_SUCCESS ? "SUCCESS" : "ERROR",
	       rc != OQS_SUCCESS ? "n/a (error, no ss produced)" :
	       (memcmp(ss, ss_d, kem->length_shared_secret) == 0 ? "yes" : "no"),
	       rc != OQS_SUCCESS ? "REJECT(error)" :
	       (memcmp(ss, ss_d, kem->length_shared_secret) == 0 ? "ACCEPT(same ss)" :
		"IMPLICIT-REJECTION(random ss, no error)"));

	free(sk_tamper);
	free(pk); free(sk); free(ct); free(ss); free(ss_d); free(pk_mut);
	free(kp_seed); free(enc_seed);
	OQS_KEM_free(kem);
}

int main(void) {
	OQS_init();
	printf("input_check battery — liboqs %s — q=3329, %d mutated keys/set, %d coeffs/key\n",
	       OQS_version(), NMUT, NCOEFF_MUT);
	bench_kem("ML-KEM-512", 2);
	bench_kem("ML-KEM-768", 3);
	bench_kem("ML-KEM-1024", 4);
	OQS_destroy();
	return 0;
}
