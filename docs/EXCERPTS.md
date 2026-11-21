# Excerpts — verbatim passages from this pack

These excerpts are copied verbatim from the pack's docs, tables, and
unedited logs so the evidence can be read without following any link.
Line references are to the pack files named in each block.

## 1. Pinned engine

From `data/pins.json`:

- engine: liboqs 0.16.0, tag commit
  `5a1a854b0dc9f2141bdc771c555ee60c37950183`, tree
  `8e0a3a68b247f821ed535a141aa896a7fda59d2d`, released 2026-07-09
- mlkem_backend: pq-code-package/mlkem-native v1.2.0
- mldsa_backend: pq-code-package/mldsa-native
- pqclean_head: `0586a824fc0d49df0b6b6e9179d8d15d06d0974f` (archived
  read-only 2026-08-04)
- toolchain: gcc 13.3.0, cmake 3.28.3, Python 3.12.3, OpenSSL 3.0.13
- machine: 4 vCPU AMD EPYC 9D25, AVX2 / AVX512F / BMI2 / AES, no Clang

## 2. Principal measurements (from `outputs/benchmark_latency.md`)

Medians, N=1000 trials per operation, CLOCK_MONOTONIC_RAW, single core:

| Algorithm | keygen | encaps / sign | decaps / verify |
|---|---|---|---|
| ML-KEM-512 | 8.70 / 22.10 | 10.01 / 22.59 | 13.71 / 26.13 |
| ML-KEM-768 | 15.19 / 29.73 | 13.68 / 35.02 | 18.57 / 50.68 |
| ML-KEM-1024 | 17.66 / 37.59 | 19.46 / 41.29 | 25.88 / 59.60 |
| ML-DSA-44 | 27.36 / 41.98 | 89.96 / 457.74 | 32.59 / 60.16 |
| ML-DSA-65 | 47.25 / 66.80 | 129.05 / 592.09 | 48.08 / 79.83 |
| ML-DSA-87 | 69.92 / 107.68 | 159.10 / 533.99 | 70.51 / 129.37 |

Columns are p50 / p99 in microseconds. Sizes match FIPS 203 Table 3 /
FIPS 204 Table 2 exactly (ML-KEM-768: pk 1184 / sk 2400 / ct 1088 /
ss 32 B; ML-DSA-65: pk 1952 / sk 4032 / sig 3309 B).

## 3. KAT fidelity (from `data/kat-derand-check.log`)

```
KAT derand check — ML-KEM-768 — liboqs vs official kat_MLKEM_768.rsp
method: keypair seed = d||z, encaps seed = msg, via OQS_KEM_*_derand
vectors in .rsp: 1000; checked: first 5
vector 0: pk=PASS, sk=PASS, ct=PASS, ss=PASS (decaps_ss_match=yes)
vector 1: pk=PASS, sk=PASS, ct=PASS, ss=PASS (decaps_ss_match=yes)
vector 2: pk=PASS, sk=PASS, ct=PASS, ss=PASS (decaps_ss_match=yes)
vector 3: pk=PASS, sk=PASS, ct=PASS, ss=PASS (decaps_ss_match=yes)
vector 4: pk=PASS, sk=PASS, ct=PASS, ss=PASS (decaps_ss_match=yes)
SUMMARY ML-KEM-768 derand-vs-rsp: 20 field-PASS, 0 field-FAIL over first 5 vectors
```

Direct kat_kem/kat_sig vs .rsp fails 0/45 fields — a KAT *procedure*
mismatch (different DRBG stream; the .rsp count-0 seed is not in the
SP 800-90A AES-256-CTR-DRBG stream liboqs uses), not an implementation
bug. See docs/benchmark.md, "KAT fidelity — the honest result".

## 4. Input checks (from `data/input-check.log` and `data/pqclean-check.log`)

liboqs 0.16.0, non-reduced encapsulation keys (4 coefficients per key
raised by q=3329, 20 keys per set):

```
== ML-KEM-512 (k=2) ==
control valid-key encaps: ACCEPT
mutated-key trial  0: coeffs_unreduced=4 coeff_idx=[166,315,113,47] pk_bytes_differ=yes encaps=REJECT(error) decaps_ss_matches_original_sk=no
```

All 20 trials per set read `encaps=REJECT(error)` — 0/20 accepted on
ML-KEM-512, 0/20 on ML-KEM-768, 0/20 on ML-KEM-1024.
RUSTSEC-2026-0585 does NOT reproduce against liboqs 0.16.0.

Tampered decapsulation keys:

```
tamper H(ek) byte@1573: decaps rc=ERROR ss_match=n/a (error, no ss produced) -> REJECT(error)
tamper embedded-ek byte@778: decaps rc=ERROR ss_match=n/a (error, no ss produced) -> REJECT(error)
tamper H(ek) byte@2341: decaps rc=ERROR ss_match=n/a (error, no ss produced) -> REJECT(error)
tamper embedded-ek byte@1162: decaps rc=ERROR ss_match=n/a (error, no ss produced) -> REJECT(error)
tamper H(ek) byte@3109: decaps rc=ERROR ss_match=n/a (error, no ss produced) -> REJECT(error)
tamper embedded-ek byte@1546: decaps rc=ERROR ss_match=n/a (error, no ss produced) -> REJECT(error)
```

PQClean snapshot control (ML-KEM-768/clean):

```
mutated-key trial  0: coeffs_unreduced=4 coeff_idx=[678,249,369,53] pk_bytes_differ=yes enc=ACCEPT dec_ss_matches_original_sk=no
```

20/20 accepted — the vulnerable baseline shape reproduced.

## 5. Tail mutation (from `data/tail-mutation.log`)

```
tail-mutation sweep — ML-KEM-768 — XOR 0x01 per byte position, one at a time
positions swept: 1088
accepted (ss == original): 0
implicitly rejected (ss != original, no error): 1088
errors (decaps returned error): 0
accepted positions: []
error positions: []
helper summary line: SUMMARY ct_len=1088 positions=1088 accepted=0 implicit_reject=1088 errors=0
```

## 6. Timing probes (from `data/timing-probe.log` and `data/disasm-check.log`)

```
valid                  n=1000 mean=19.15 median=18.58 p95=18.97 p99=33.38 stdev=3.02 se=0.096 cv=0.1579 min=18.47 max=72.08
invalid                n=1000 mean=19.09 median=18.56 p95=18.70 p99=29.76 stdev=2.90 se=0.092 cv=0.1517 min=18.46 max=61.28
mean difference (valid - invalid) = 0.061 us; 3-sigma detection threshold = 0.397 us
verdict: NO detectable difference at 3-sigma threshold
```

```
  TOTAL div/idiv instructions: 0
  PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec: 0 div/idiv
  PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec: 0 div/idiv
  PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frommsg: 0 div/idiv
total conditional jumps: 1
```

## 7. Findings register (from `outputs/findings.md`)

26 findings: 1 Medium, 7 Low, 5 Informational, 13 Negative-result.

- **F-D2 (Medium):** Rejected-signature challenges are computed,
  declassified as public, and discarded — the exact surface of the
  published power/EM key-recovery attacks.
- **F-M6 / F-D7 (Low):** Keypair pairwise-consistency test compiled
  out in the liboqs build.
- **F-M7 / F-D4 (Low):** RNG failure cannot propagate through the
  liboqs randombytes glue (mitigated: failure aborts the process).
- **F-M8 / F-W1 (Low):** Backend error codes −2/−3 cast verbatim to
  OQS_STATUS, whose only error value is −1.
- **F-D3 (Low):** `rej_eta` C fallback branches on secret-seed PRF
  output; AVX2 eta4 sampler does a secret-indexed table lookup.
- **Negative results (no fix needed):** F-M1 KyberSlash1 absent;
  F-M2 KyberSlash2 absent; F-M3 Clang poly_frommsg branch absent in
  the GCC binary (Clang reproduction still open); F-M4 wolfSSL-style
  incomplete FO comparison absent; F-M5 FIPS 203 §7.2/§7.3 checks
  present; F-M9 rejection sampling / CBD no secret-dependent branch;
  F-M11 §3.3 zeroization present; F-D1 no pure-timing key recovery on
  record; F-D5 verification compare full-length constant-time; F-D6
  §3.6.3 zeroization present; F-D8 keypair re-derives and compares t0
  and tr; F-D10 `y` sampling rejection-free; F-W2 no backend failure
  swallowed.

## 8. Not-verified section (verbatim from `docs/claim-evidence-index.md`)

- **NV1 — Das paper figures** (98.0% of 2,048 coefficients from 400
  chosen ciphertexts on AVX2; 98.5% from 600 on NEON; full recovery
  ~1,300 ciphertexts; query budget 10⁵–10⁶ decapsulations): ePrint
  2026/1682 PDF returned HTTP 403 on a fresh fetch 22 Nov 2026 and was
  not retried. Figures rest on the postquantum.com write-up only; NVD
  CVE-2026-10097 ("approximately 98% success using roughly 350 chosen
  ciphertexts") corroborates the magnitude, not the per-coefficient
  numbers. The pack does not cite the figures as read-from-paper.
- **NV5 — Clang 15–18 poly_frommsg reproduction** (the PQShield
  disclosure's exact shape): No Clang is installed on this machine;
  the reproduction was not attempted. The gcc disassembly check is a
  substitute, stated plainly in data/disasm-check.log and
  docs/benchmark.md.
- **NV6 — Power/EM traces of ML-DSA signing** (F-D2 rests on code
  reading + literature, not a measurement): Not measurable on this VM.
- **NV7 — ML-DSA KAT byte comparison against the official .rsp** (no
  derand keypair API in liboqs 0.16.0 for signatures): liboqs 0.16.0
  exposes no derand keypair API for signatures. ML-DSA correctness
  rests on test_sig + 0/1000 verify failures, not on a .rsp byte
  comparison.
- **NV12 — The resolved transitive dependency tree of the ledger
  build:** Manifests pin no lattice-capable dependency, but the
  resolved tree was not inspected; a Conan install/graph resolution is
  needed for a complete statement.
- **NV15 — Timings on any CPU other than the measured one** (4 vCPU
  AMD EPYC 9D25): All measurements are for one shared-VM machine. Do
  not quote them as liboqs performance on other hardware.

(Full NV1–NV15 list: docs/claim-evidence-index.md.)

## 9. Table-generation check (from `outputs/generate_tables.log`)

```
CHECK sizes == FIPS 203 Table 3 / FIPS 204 Table 2: yes (6 sets)
CHECK retime decaps ss mismatches == 0: yes (0 mismatches)
CHECK retime verify failures == 0: yes (0 failures)
CHECK KAT derand 20/20 fields PASS: yes (20 PASS, 0 FAIL)
CHECK liboqs non-reduced pk accepted == 0/60: yes ({'ML-KEM-512': [0, 20], 'ML-KEM-768': [0, 20], 'ML-KEM-1024': [0, 20]})
CHECK PQClean non-reduced pk accepted == 20/20: yes (20/20)
CHECK tampered sk decaps errors == 6/6: yes (6/6)
CHECK tail mutation accepted == 0/1088: yes
CHECK timing diff < 3-sigma threshold: yes (diff 0.061 us vs threshold 0.397 us)
CHECK div/idiv total == 0: yes (total 0)
GENERATE VERDICT: PASS -- 0 failing checks: none
```

## 10. CI run and fresh-clone reproduction

CI run output lines and the fresh-clone reproduction log lines are
recorded in docs/fresh-clone-repro.md and repro/fresh-clone-run.log
after the repository is created and the workflow has run. The CI
workflow is `.github/workflows/verify.yml` (checksums first, offline
table regeneration, live run, run logs uploaded as artifact
`run-logs`).
