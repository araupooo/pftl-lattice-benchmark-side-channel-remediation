/* timing_probe.c — timing probes for ML-KEM-768 decaps and ML-DSA-65 signing.
 *
 * Build (from the pack root):
 *   cc -O2 -std=c11 -Iwork/liboqs/build/include -o work/measure/timing_probe \
 *      work/measure/timing_probe.c work/liboqs/build/lib/liboqs.a -lcrypto -lm
 * Run (single core):
 *   taskset -c 0 ./work/measure/timing_probe > work/measure/timing-probe.log
 * Per-trial raw times are written to work/measure/timing-valid.csv,
 * work/measure/timing-invalid.csv and work/measure/timing-sign.csv
 * (one microsecond value per line, in trial order) for audit.
 *
 * (a) KyberSlash shape — honest version: time 1000 decapsulations of valid
 * ciphertexts vs 1000 decapsulations of random (invalid) ciphertexts and
 * compare the distributions. A chosen-ciphertext oracle that crafts
 * ciphertexts exercising different division inputs is NOT available through
 * the public API, so no division-specific timing claim is made here.
 * Detection threshold: a mean difference is reported as detectable only if
 * |mean_valid - mean_invalid| exceeds 3 * sqrt(se_valid^2 + se_invalid^2)
 * (3-sigma on the difference of means); otherwise the result is "no
 * detectable difference at this threshold".
 * (b) ML-DSA abort-loop shape: time 1000 sign operations on a fixed message
 * with a fixed keypair and report the distribution. The signing-loop
 * iteration count is NOT exposed by the public liboqs API, so no
 * time-vs-iteration correlation can be measured from outside; the
 * distribution (and its coefficient of variation) is reported instead, with
 * the minimum detectable mean shift stated as the threshold.
 */
#define _POSIX_C_SOURCE 199309L
#include <math.h>
#include <oqs/oqs.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define N 1000
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

static void stats(const char *label, double *t, size_t n) {
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
	double se = stdev / sqrt((double)n);
	printf("%-22s n=%zu mean=%.2f median=%.2f p95=%.2f p99=%.2f stdev=%.2f se=%.3f cv=%.4f min=%.2f max=%.2f\n",
	       label, n, mean, s[n / 2], s[(size_t)(0.95 * (n - 1))],
	       s[(size_t)(0.99 * (n - 1))], stdev, se, stdev / mean, s[0], s[n - 1]);
	printf("%-22s mean=%.4f stdev=%.4f se=%.4f (for threshold math)\n", "  [detail]", mean, stdev, se);
	free(s);
}

static double mean_of(double *t, size_t n) {
	double sum = 0.0;
	for (size_t i = 0; i < n; i++) { sum += t[i]; }
	return sum / (double)n;
}

static double se_of(double *t, size_t n) {
	double m = mean_of(t, n), var = 0.0;
	for (size_t i = 0; i < n; i++) { var += (t[i] - m) * (t[i] - m); }
	return sqrt(var / (double)n) / sqrt((double)n);
}

static void write_csv(const char *path, double *t, size_t n) {
	FILE *f = fopen(path, "w");
	if (!f) { fprintf(stderr, "cannot open %s\n", path); exit(1); }
	for (size_t i = 0; i < n; i++) { fprintf(f, "%.3f\n", t[i]); }
	fclose(f);
	printf("raw times written to %s (%zu rows)\n", path, n);
}

static void trial_seed(uint8_t *seed, size_t len, size_t trial) {
	for (size_t j = 0; j < len; j++) { seed[j] = (uint8_t)((trial ^ j ^ 0x42) & 0xff); }
}

int main(void) {
	OQS_init();
	printf("timing_probe — liboqs %s — N=%d warmup=%d clock=CLOCK_MONOTONIC_RAW single-threaded\n",
	       OQS_version(), N, NWARMUP);

	/* ---- (a) ML-KEM-768 decaps: valid vs random-invalid ciphertexts ---- */
	OQS_KEM *kem = OQS_KEM_new("ML-KEM-768");
	if (!kem) { fprintf(stderr, "ML-KEM-768 not enabled\n"); return 1; }
	uint8_t *pk = malloc(kem->length_public_key);
	uint8_t *sk = malloc(kem->length_secret_key);
	uint8_t *ct = malloc(kem->length_ciphertext);
	uint8_t *ss = malloc(kem->length_shared_secret);
	uint8_t *ss_d = malloc(kem->length_shared_secret);
	uint8_t kp_seed[64], enc_seed[32];
	double *t_valid = malloc(N * sizeof(double));
	double *t_invalid = malloc(N * sizeof(double));
	if (!pk || !sk || !ct || !ss || !ss_d || !t_valid || !t_invalid) { fprintf(stderr, "malloc failed\n"); return 1; }
	memset(kp_seed, 0x42, sizeof(kp_seed));
	if (OQS_KEM_keypair_derand(kem, pk, sk, kp_seed) != OQS_SUCCESS) { fprintf(stderr, "keypair failed\n"); return 1; }

	/* Valid ciphertexts: fresh derand encaps per trial. */
	for (size_t i = 0; i < NWARMUP; i++) {
		trial_seed(enc_seed, sizeof(enc_seed), i);
		OQS_KEM_encaps_derand(kem, ct, ss, pk, enc_seed);
		OQS_KEM_decaps(kem, ss_d, ct, sk);
	}
	for (size_t i = 0; i < N; i++) {
		trial_seed(enc_seed, sizeof(enc_seed), i);
		if (OQS_KEM_encaps_derand(kem, ct, ss, pk, enc_seed) != OQS_SUCCESS) { fprintf(stderr, "encaps failed\n"); return 1; }
		double a = now_us();
		if (OQS_KEM_decaps(kem, ss_d, ct, sk) != OQS_SUCCESS) { fprintf(stderr, "decaps valid failed\n"); return 1; }
		t_valid[i] = now_us() - a;
		if (memcmp(ss, ss_d, kem->length_shared_secret) != 0) { fprintf(stderr, "valid ss mismatch\n"); return 1; }
	}
	/* Invalid ciphertexts: deterministic pseudo-random bytes (LCG) per trial. */
	uint64_t lcg = 0x123456789abcdefULL;
	for (size_t i = 0; i < NWARMUP; i++) {
		for (size_t j = 0; j < kem->length_ciphertext; j++) {
			lcg = lcg * 6364136223846793005ULL + 1442695040888963407ULL;
			ct[j] = (uint8_t)(lcg >> 33);
		}
		OQS_KEM_decaps(kem, ss_d, ct, sk);
	}
	for (size_t i = 0; i < N; i++) {
		for (size_t j = 0; j < kem->length_ciphertext; j++) {
			lcg = lcg * 6364136223846793005ULL + 1442695040888963407ULL;
			ct[j] = (uint8_t)(lcg >> 33);
		}
		double a = now_us();
		OQS_KEM_decaps(kem, ss_d, ct, sk);
		t_invalid[i] = now_us() - a;
	}
	printf("== (a) ML-KEM-768 decaps: valid ct vs random-invalid ct ==\n");
	stats("valid", t_valid, N);
	stats("invalid", t_invalid, N);
	double dm = mean_of(t_valid, N) - mean_of(t_invalid, N);
	double thr = 3.0 * sqrt(se_of(t_valid, N) * se_of(t_valid, N) + se_of(t_invalid, N) * se_of(t_invalid, N));
	printf("mean difference (valid - invalid) = %.3f us; 3-sigma detection threshold = %.3f us\n", dm, thr);
	printf("verdict: %s\n", fabs(dm) > thr ? "DETECTABLE difference at 3-sigma threshold" : "NO detectable difference at 3-sigma threshold");
	write_csv("work/measure/timing-valid.csv", t_valid, N);
	write_csv("work/measure/timing-invalid.csv", t_invalid, N);
	free(pk); free(sk); free(ct); free(ss); free(ss_d); free(t_valid); free(t_invalid);
	OQS_KEM_free(kem);

	/* ---- (b) ML-DSA-65 signing time distribution ---- */
	OQS_SIG *sig = OQS_SIG_new("ML-DSA-65");
	if (!sig) { fprintf(stderr, "ML-DSA-65 not enabled\n"); return 1; }
	uint8_t *spk = malloc(sig->length_public_key);
	uint8_t *ssk = malloc(sig->length_secret_key);
	uint8_t *signature = malloc(sig->length_signature);
	double *t_sign = malloc(N * sizeof(double));
	if (!spk || !ssk || !signature || !t_sign) { fprintf(stderr, "malloc failed\n"); return 1; }
	if (OQS_SIG_keypair(sig, spk, ssk) != OQS_SUCCESS) { fprintf(stderr, "sig keypair failed\n"); return 1; }
	uint8_t msg[64];
	for (int i = 0; i < 64; i++) { msg[i] = (uint8_t)i; }
	size_t sig_len = 0;
	for (size_t i = 0; i < NWARMUP; i++) {
		if (OQS_SIG_sign(sig, signature, &sig_len, msg, sizeof(msg), ssk) != OQS_SUCCESS) { fprintf(stderr, "sign failed\n"); return 1; }
	}
	for (size_t i = 0; i < N; i++) {
		double a = now_us();
		if (OQS_SIG_sign(sig, signature, &sig_len, msg, sizeof(msg), ssk) != OQS_SUCCESS) { fprintf(stderr, "sign failed\n"); return 1; }
		t_sign[i] = now_us() - a;
	}
	printf("== (b) ML-DSA-65 sign: 1000x fixed message, fixed keypair ==\n");
	stats("sign", t_sign, N);
	printf("note: signing-loop iteration count is NOT exposed by the public liboqs API,\n"
	       "so no time-vs-iteration correlation is measurable from outside. The\n"
	       "distribution above is the observable: a bimodal/multimodal split or a\n"
	       "long tail would be the signature of the abort loop. 3-sigma threshold\n"
	       "on the mean (se*3) = %.3f us.\n", 3.0 * se_of(t_sign, N));
	write_csv("work/measure/timing-sign.csv", t_sign, N);
	free(spk); free(ssk); free(signature); free(t_sign);
	OQS_SIG_free(sig);

	OQS_destroy();
	return 0;
}
