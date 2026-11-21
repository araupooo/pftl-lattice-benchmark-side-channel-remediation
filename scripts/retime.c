/* retime.c — independent re-timing harness for ML-KEM / ML-DSA (liboqs 0.16.0).
 *
 * Build (from the pack root):
 *   cc -O2 -std=c11 -Iwork/liboqs/build/include -o work/measure/retime \
 *      work/measure/retime.c work/liboqs/build/lib/liboqs.a -lcrypto -lm
 * Run (single core, as specified by the task):
 *   taskset -c 0 ./work/measure/retime > work/measure/retime.log
 *
 * Method: N>=1000 timed trials per operation, clock_gettime(CLOCK_MONOTONIC_RAW).
 * KEM keypair/encaps use the _derand API with fixed, deterministic seeds so the
 * run is reproducible (seed byte i = (trial & 0xff) ^ 0x42 pattern, documented
 * below). ML-DSA has no derand keypair API in liboqs 0.16.0, so its keypair is
 * generated once per run from the system RNG and the message is fixed; only the
 * timing distribution is claimed reproducible, not the keypair itself.
 * Each operation is preceded by 50 unrecorded warmup iterations.
 */
#define _POSIX_C_SOURCE 199309L
#include <math.h>
#include <oqs/oqs.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define NTRIALS 1000
#define NWARMUP 50

static double now_us(void) {
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC_RAW, &ts);
	return (double)ts.tv_sec * 1e6 + (double)ts.tv_nsec / 1e3;
}

static int cmp_dbl(const void *a, const void *b) {
	double x = *(const double *)a, y = *(const double *)b;
	return (x > y) - (x < y);
}

/* Print n, mean, median, p95, p99, stdev (us), ops/s for an array of times. */
static void report(const char *label, double *t, size_t n) {
	double *s = malloc(n * sizeof(double));
	if (!s) { fprintf(stderr, "malloc failed\n"); exit(1); }
	memcpy(s, t, n * sizeof(double));
	qsort(s, n, sizeof(double), cmp_dbl);
	double sum = 0.0;
	for (size_t i = 0; i < n; i++) { sum += t[i]; }
	double mean = sum / (double)n;
	double var = 0.0;
	for (size_t i = 0; i < n; i++) { var += (t[i] - mean) * (t[i] - mean); }
	double stdev = sqrt(var / (double)n);
	double median = s[n / 2];
	double p95 = s[(size_t)(0.95 * (n - 1))];
	double p99 = s[(size_t)(0.99 * (n - 1))];
	printf("%-28s n=%zu mean=%.2f median=%.2f p95=%.2f p99=%.2f stdev=%.2f ops/s=%.1f\n",
	       label, n, mean, median, p95, p99, stdev, 1e6 / mean);
	free(s);
}

/* Deterministic per-trial seed: byte j = (trial ^ j ^ 0x42) & 0xff. */
static void trial_seed(uint8_t *seed, size_t len, size_t trial) {
	for (size_t j = 0; j < len; j++) {
		seed[j] = (uint8_t)((trial ^ j ^ 0x42) & 0xff);
	}
}

static void bench_kem(const char *name) {
	OQS_KEM *kem = OQS_KEM_new(name);
	if (!kem) { printf("%s: NOT ENABLED\n", name); return; }
	printf("== %s ==\n", name);
	printf("sizes: pk=%zu sk=%zu ct=%zu ss=%zu keypair_seed=%zu encaps_seed=%zu\n",
	       kem->length_public_key, kem->length_secret_key, kem->length_ciphertext,
	       kem->length_shared_secret, kem->length_keypair_seed, kem->length_encaps_seed);

	uint8_t *pk = malloc(kem->length_public_key);
	uint8_t *sk = malloc(kem->length_secret_key);
	uint8_t *ct = malloc(kem->length_ciphertext);
	uint8_t *ss_e = malloc(kem->length_shared_secret);
	uint8_t *ss_d = malloc(kem->length_shared_secret);
	uint8_t *kp_seed = malloc(kem->length_keypair_seed);
	uint8_t *enc_seed = malloc(kem->length_encaps_seed);
	double *t = malloc(NTRIALS * sizeof(double));
	if (!pk || !sk || !ct || !ss_e || !ss_d || !kp_seed || !enc_seed || !t) {
		fprintf(stderr, "malloc failed\n"); exit(1);
	}

	/* keygen (derand) */
	for (size_t i = 0; i < NWARMUP; i++) {
		trial_seed(kp_seed, kem->length_keypair_seed, i);
		if (OQS_KEM_keypair_derand(kem, pk, sk, kp_seed) != OQS_SUCCESS) {
			fprintf(stderr, "%s keypair_derand failed\n", name); exit(1);
		}
	}
	for (size_t i = 0; i < NTRIALS; i++) {
		trial_seed(kp_seed, kem->length_keypair_seed, i);
		double a = now_us();
		if (OQS_KEM_keypair_derand(kem, pk, sk, kp_seed) != OQS_SUCCESS) {
			fprintf(stderr, "%s keypair_derand failed\n", name); exit(1);
		}
		t[i] = now_us() - a;
	}
	report("keygen", t, NTRIALS);

	/* fixed keypair for encaps/decaps (seed all 0x42) */
	memset(kp_seed, 0x42, kem->length_keypair_seed);
	if (OQS_KEM_keypair_derand(kem, pk, sk, kp_seed) != OQS_SUCCESS) {
		fprintf(stderr, "%s fixed keypair failed\n", name); exit(1);
	}

	/* encaps (derand) */
	for (size_t i = 0; i < NWARMUP; i++) {
		trial_seed(enc_seed, kem->length_encaps_seed, i);
		if (OQS_KEM_encaps_derand(kem, ct, ss_e, pk, enc_seed) != OQS_SUCCESS) {
			fprintf(stderr, "%s encaps_derand failed\n", name); exit(1);
		}
	}
	for (size_t i = 0; i < NTRIALS; i++) {
		trial_seed(enc_seed, kem->length_encaps_seed, i);
		double a = now_us();
		if (OQS_KEM_encaps_derand(kem, ct, ss_e, pk, enc_seed) != OQS_SUCCESS) {
			fprintf(stderr, "%s encaps_derand failed\n", name); exit(1);
		}
		t[i] = now_us() - a;
	}
	report("encaps", t, NTRIALS);

	/* decaps: one fresh (derand) ct per trial, time decaps only */
	for (size_t i = 0; i < NWARMUP; i++) {
		trial_seed(enc_seed, kem->length_encaps_seed, i);
		OQS_KEM_encaps_derand(kem, ct, ss_e, pk, enc_seed);
		if (OQS_KEM_decaps(kem, ss_d, ct, sk) != OQS_SUCCESS) {
			fprintf(stderr, "%s decaps failed\n", name); exit(1);
		}
		if (memcmp(ss_e, ss_d, kem->length_shared_secret) != 0) {
			fprintf(stderr, "%s ss mismatch in warmup\n", name); exit(1);
		}
	}
	size_t mismatches = 0;
	for (size_t i = 0; i < NTRIALS; i++) {
		trial_seed(enc_seed, kem->length_encaps_seed, i);
		if (OQS_KEM_encaps_derand(kem, ct, ss_e, pk, enc_seed) != OQS_SUCCESS) {
			fprintf(stderr, "%s encaps_derand failed\n", name); exit(1);
		}
		double a = now_us();
		if (OQS_KEM_decaps(kem, ss_d, ct, sk) != OQS_SUCCESS) {
			fprintf(stderr, "%s decaps failed\n", name); exit(1);
		}
		t[i] = now_us() - a;
		if (memcmp(ss_e, ss_d, kem->length_shared_secret) != 0) { mismatches++; }
	}
	report("decaps", t, NTRIALS);
	printf("decaps ss mismatches: %zu / %d\n", mismatches, NTRIALS);

	free(pk); free(sk); free(ct); free(ss_e); free(ss_d);
	free(kp_seed); free(enc_seed); free(t);
	OQS_KEM_free(kem);
}

static void bench_sig(const char *name) {
	OQS_SIG *sig = OQS_SIG_new(name);
	if (!sig) { printf("%s: NOT ENABLED\n", name); return; }
	printf("== %s ==\n", name);
	printf("sizes: pk=%zu sk=%zu sig=%zu\n",
	       sig->length_public_key, sig->length_secret_key, sig->length_signature);

	uint8_t *pk = malloc(sig->length_public_key);
	uint8_t *sk = malloc(sig->length_secret_key);
	uint8_t *signature = malloc(sig->length_signature);
	double *t = malloc(NTRIALS * sizeof(double));
	if (!pk || !sk || !signature || !t) { fprintf(stderr, "malloc failed\n"); exit(1); }

	/* fixed 64-byte message: bytes 0..63 */
	uint8_t msg[64];
	for (int i = 0; i < 64; i++) { msg[i] = (uint8_t)i; }

	/* keygen (random; no derand API for SIG in liboqs 0.16.0) */
	for (size_t i = 0; i < NWARMUP; i++) {
		if (OQS_SIG_keypair(sig, pk, sk) != OQS_SUCCESS) {
			fprintf(stderr, "%s keypair failed\n", name); exit(1);
		}
	}
	for (size_t i = 0; i < NTRIALS; i++) {
		double a = now_us();
		if (OQS_SIG_keypair(sig, pk, sk) != OQS_SUCCESS) {
			fprintf(stderr, "%s keypair failed\n", name); exit(1);
		}
		t[i] = now_us() - a;
	}
	report("keygen", t, NTRIALS);

	/* fixed keypair for sign/verify: regenerate once, keep it */
	if (OQS_SIG_keypair(sig, pk, sk) != OQS_SUCCESS) {
		fprintf(stderr, "%s fixed keypair failed\n", name); exit(1);
	}

	size_t sig_len = 0;
	for (size_t i = 0; i < NWARMUP; i++) {
		if (OQS_SIG_sign(sig, signature, &sig_len, msg, sizeof(msg), sk) != OQS_SUCCESS) {
			fprintf(stderr, "%s sign failed\n", name); exit(1);
		}
	}
	size_t sign_sig_len_min = (size_t)-1, sign_sig_len_max = 0;
	for (size_t i = 0; i < NTRIALS; i++) {
		double a = now_us();
		if (OQS_SIG_sign(sig, signature, &sig_len, msg, sizeof(msg), sk) != OQS_SUCCESS) {
			fprintf(stderr, "%s sign failed\n", name); exit(1);
		}
		t[i] = now_us() - a;
		if (sig_len < sign_sig_len_min) { sign_sig_len_min = sig_len; }
		if (sig_len > sign_sig_len_max) { sign_sig_len_max = sig_len; }
	}
	report("sign", t, NTRIALS);
	printf("sign signature_len: min=%zu max=%zu (nominal max %zu)\n",
	       sign_sig_len_min, sign_sig_len_max, sig->length_signature);

	/* verify: re-sign once, then time verify of that signature */
	if (OQS_SIG_sign(sig, signature, &sig_len, msg, sizeof(msg), sk) != OQS_SUCCESS) {
		fprintf(stderr, "%s sign failed\n", name); exit(1);
	}
	for (size_t i = 0; i < NWARMUP; i++) {
		if (OQS_SIG_verify(sig, msg, sizeof(msg), signature, sig_len, pk) != OQS_SUCCESS) {
			fprintf(stderr, "%s verify failed\n", name); exit(1);
		}
	}
	size_t verify_failures = 0;
	for (size_t i = 0; i < NTRIALS; i++) {
		double a = now_us();
		OQS_STATUS rc = OQS_SIG_verify(sig, msg, sizeof(msg), signature, sig_len, pk);
		t[i] = now_us() - a;
		if (rc != OQS_SUCCESS) { verify_failures++; }
	}
	report("verify", t, NTRIALS);
	printf("verify failures: %zu / %d\n", verify_failures, NTRIALS);

	free(pk); free(sk); free(signature); free(t);
	OQS_SIG_free(sig);
}

int main(void) {
	OQS_init();
	printf("retime harness — liboqs %s — NTRIALS=%d warmup=%d clock=CLOCK_MONOTONIC_RAW single-threaded\n",
	       OQS_version(), NTRIALS, NWARMUP);
	bench_kem("ML-KEM-512");
	bench_kem("ML-KEM-768");
	bench_kem("ML-KEM-1024");
	bench_sig("ML-DSA-44");
	bench_sig("ML-DSA-65");
	bench_sig("ML-DSA-87");
	OQS_destroy();
	return 0;
}
