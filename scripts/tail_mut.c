/* tail_mut.c — helper for the tail-mutation sweep (FO comparison).
 * Mutates each byte position of a valid ML-KEM-768 ciphertext once (XOR 0x01),
 * decapsulates, and reports whether the shared secret equals the original
 * (accepted) or not (implicitly rejected). ML-KEM decaps never returns an
 * error for a well-formed ct, so "rejected" here means implicit rejection.
 *
 * Build (from the pack root):
 *   cc -O2 -std=c11 -Iwork/liboqs/build/include -o work/measure/tail_mut \
 *      work/measure/tail_mut.c work/liboqs/build/lib/liboqs.a -lcrypto -lm
 * Run via work/measure/tail_mutation.py (it compiles if needed and counts).
 */
#include <oqs/oqs.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
	OQS_init();
	OQS_KEM *kem = OQS_KEM_new("ML-KEM-768");
	if (!kem) { fprintf(stderr, "ML-KEM-768 not enabled\n"); return 1; }

	uint8_t *pk = malloc(kem->length_public_key);
	uint8_t *sk = malloc(kem->length_secret_key);
	uint8_t *ct = malloc(kem->length_ciphertext);
	uint8_t *ct_mut = malloc(kem->length_ciphertext);
	uint8_t *ss = malloc(kem->length_shared_secret);
	uint8_t *ss_d = malloc(kem->length_shared_secret);
	uint8_t kp_seed[64], enc_seed[32];
	if (!pk || !sk || !ct || !ct_mut || !ss || !ss_d) { fprintf(stderr, "malloc failed\n"); return 1; }

	memset(kp_seed, 0x42, sizeof(kp_seed));
	memset(enc_seed, 0x11, sizeof(enc_seed));
	if (OQS_KEM_keypair_derand(kem, pk, sk, kp_seed) != OQS_SUCCESS) { fprintf(stderr, "keypair failed\n"); return 1; }
	if (OQS_KEM_encaps_derand(kem, ct, ss, pk, enc_seed) != OQS_SUCCESS) { fprintf(stderr, "encaps failed\n"); return 1; }

	size_t accepted = 0, rejected = 0, errors = 0;
	for (size_t i = 0; i < kem->length_ciphertext; i++) {
		memcpy(ct_mut, ct, kem->length_ciphertext);
		ct_mut[i] ^= 0x01;
		OQS_STATUS rc = OQS_KEM_decaps(kem, ss_d, ct_mut, sk);
		if (rc != OQS_SUCCESS) {
			errors++;
			printf("%zu ERROR\n", i);
		} else if (memcmp(ss, ss_d, kem->length_shared_secret) == 0) {
			accepted++;
			printf("%zu ACCEPTED\n", i);
		} else {
			rejected++;
			printf("%zu IMPLICIT-REJECT\n", i);
		}
	}
	printf("SUMMARY ct_len=%zu positions=%zu accepted=%zu implicit_reject=%zu errors=%zu\n",
	       kem->length_ciphertext, kem->length_ciphertext, accepted, rejected, errors);
	free(pk); free(sk); free(ct); free(ct_mut); free(ss); free(ss_d);
	OQS_KEM_free(kem);
	OQS_destroy();
	return 0;
}
