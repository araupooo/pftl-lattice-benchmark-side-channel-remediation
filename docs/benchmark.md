# Benchmark report — liboqs 0.16.0, ML-KEM and ML-DSA

## Scope

[FAKTA] One pinned lattice engine: **liboqs 0.16.0** (tag commit
`5a1a854b0dc9f2141bdc771c555ee60c37950183`, tree
`8e0a3a68b247f821ed535a141aa896a7fda59d2d`, released 9 July 2026).
ML-KEM comes from the vendored `pq-code-package/mlkem-native` v1.2.0;
ML-DSA from `pq-code-package/mldsa-native`. The engine is **proposed** for
a post-quantum ledger, not used by one: the ledger codebase inspected for
this pack (postfiatd, HEAD `24c5487d`) contains zero lattice code — see
docs/postfiatd-integration.md. Nothing in this report claims the engine is
deployed anywhere.

[FAKTA] Why liboqs 0.16.0: it is the current release of the maintained
multi-algorithm library, it vendors the two canonical native
implementations (mlkem-native / mldsa-native) that replaced PQClean code,
it ships the measurement tooling (`test_kem`, `test_sig`, `kat_kem`,
`kat_sig`, `speed_kem`, `speed_sig`), and it builds on this machine with
the available toolchain. The archived PQClean snapshot (HEAD `0586a824`)
is used only as a vulnerable-baseline control for the input-check battery,
never as the engine under test.

## Environment

[FAKTA] Machine: 4 vCPU AMD EPYC 9D25, AVX2 / AVX512F / BMI2 / AES.
Toolchain: gcc 13.3.0, cmake 3.28.3, Python 3.12.3, OpenSSL 3.0.13,
make 4.3. No Clang is installed; no ninja. Build: CMake Release
(`-O3 -DNDEBUG`), Unix Makefiles generator. All timing runs are
single-core (`taskset -c 0`) unless noted.

[FAKTA] Two builds were used. The **full build** (all algorithms, ~15
minutes) produced the committed measurement logs in data/. The pack's
one-command runner uses a **scoped minimal build**
(`-DOQS_MINIMAL_BUILD="KEM_ml_kem_512;KEM_ml_kem_768;KEM_ml_kem_1024;
SIG_ml_dsa_44;SIG_ml_dsa_65;SIG_ml_dsa_87"`, ~53 s, `liboqs.a`
1,762,738 bytes vs 38,720,322 for the full build). The scoped build was
verified to contain both the x86_64 and C-ref backends and to reproduce
the full build's `speed_kem` means (ML-KEM-768: keygen 16.01 vs 15.64 us,
encaps 16.04 vs 16.25 us, decaps 19.58 vs 19.58 us). `scripts/run_all.sh`
re-runs the whole suite against the scoped build and compares it with the
committed values (deterministic counts exact, timing medians within 25%).

## Method

[FAKTA] Three independent measurement layers:

1. **The maintained tool's own programs** (`test_kem`, `test_sig`,
   `speed_kem`, `speed_sig`, 3 s runs) — smoke + cross-check.
2. **An independent re-timing harness** (`scripts/retime.c`, N=1000
   trials per operation, `CLOCK_MONOTONIC_RAW`, 50 warmups). KEM uses the
   derand API with fixed seeds, so the same inputs are timed every run;
   ML-DSA has no derand keypair API in liboqs 0.16.0, so its keypair is
   random per run and only the timing distribution is claimed.
3. **Focused tests** — KAT fidelity (`scripts/kat_check.py`,
   `scripts/kat_derand_check.py`), input checks
   (`scripts/input_check.c`, `scripts/pqclean_check.c`), tail mutation
   (`scripts/tail_mutation.py`), timing probes
   (`scripts/timing_probe.c`), disassembly census
   (`scripts/disasm_check.sh`), memory profile
   (`scripts/mem_profile.py`).

[ANALISIS] Medians are the reliable column. The means carry occasional
multi-ms host stalls on this shared VM (e.g. ML-KEM-768 keygen mean
33.99 us vs median 15.19 us, stdev 579.94 us; ML-KEM-1024 keygen mean
47.22 us vs median 17.66 us, stdev 905.02 us). A repeat run reproduced
every median within ~15% (worst case ML-KEM-768 keygen 15.19 → 12.97 us);
ML-DSA-65 sign median was 129.05 us in both runs.

## Principal measurements

### Latency (independent re-timing, medians)

[FAKTA] Full table: outputs/benchmark_latency.md (18 rows). Highlights,
all microseconds, p50 / p99:

| Algorithm | keygen | encaps / sign | decaps / verify |
|---|---|---|---|
| ML-KEM-512 | 8.70 / 22.10 | 10.01 / 22.59 | 13.71 / 26.13 |
| ML-KEM-768 | 15.19 / 29.73 | 13.68 / 35.02 | 18.57 / 50.68 |
| ML-KEM-1024 | 17.66 / 37.59 | 19.46 / 41.29 | 25.88 / 59.60 |
| ML-DSA-44 | 27.36 / 41.98 | 89.96 / 457.74 | 32.59 / 60.16 |
| ML-DSA-65 | 47.25 / 66.80 | 129.05 / 592.09 | 48.08 / 79.83 |
| ML-DSA-87 | 69.92 / 107.68 | 159.10 / 533.99 | 70.51 / 129.37 |

[FAKTA] Throughput from the means (ops/s): ML-KEM-768 keygen 29,417,
encaps 67,069, decaps 50,401; ML-DSA-65 keypair 20,263, sign 4,361,
verify 11,723. [ANALISIS] The ML-DSA sign distribution is wide (p99
~4.6x the median) because of the abort loop; a ledger signing path
should budget for the tail, not the median.

[FAKTA] Correctness during re-timing: decaps shared-secret mismatches
0/1000 per KEM set; verify failures 0/1000 per signature set. ML-DSA
signature length was constant (min = max = nominal max) in all 1000
trials per set.

### Sizes

[FAKTA] Measured sizes equal FIPS 203 Table 3 and FIPS 204 Table 2
exactly (outputs/benchmark_sizes.md): ML-KEM-512 pk 800 / sk 1632 /
ct 768 / ss 32; ML-KEM-768 1184 / 2400 / 1088 / 32; ML-KEM-1024 1568 /
3168 / 1568 / 32; ML-DSA-44 pk 1312 / sk 2560 / sig 2420; ML-DSA-65
1952 / 4032 / 3309; ML-DSA-87 2592 / 4896 / 4627 bytes.

### Memory

[FAKTA] Peak RSS: `speed_kem ML-KEM-768 --duration 3` 11,444 KiB
(11.2 MiB); `speed_sig ML-DSA-65 --duration 3` 11,608 KiB (11.3 MiB),
measured with `resource.getrusage` (the same quantity `/usr/bin/time`
reports; that binary is not installed on this machine). One process per
binary so the cumulative max does not conflate the two.

## KAT fidelity — the honest result

[FAKTA] Direct comparison of liboqs's `kat_kem`/`kat_sig` output against
the official FIPS 203/204 `.rsp` files **fails 0/45 fields** over the
first 5 vectors (ML-KEM-768 0/25, ML-DSA-65 0/20). This is a **KAT
procedure mismatch, not an implementation bug**: the seed itself differs
at count 0. liboqs's count-0 seed (`06155023…`) is byte-exact the first
output of the SP 800-90A AES-256-CTR-DRBG seeded with entropy bytes
0..47 — confirmed with an independent Python re-implementation of that
DRBG. The `.rsp` count-0 seed (`23f1c88b…`) is not in that DRBG stream.
The `.rsp` files are the FIPS 203/204 deterministic KATs, generated by a
different procedure than liboqs's PQC-submission-era KAT programs. Known
format differences are documented in data/kat-check.log: the `.rsp`
files carry extra fields (`z`, `d`, `msg` for KEM; `xi`, `ctx` for SIG)
that liboqs does not print, and ML-DSA `.rsp` `mlen` is 16·(count+1)
vs liboqs `kat_sig` 33·(count+1), so message/signature differ in length
by construction.

[FAKTA] The decisive check feeds the `.rsp`'s own inputs through the
public derand API (keypair seed = d‖z, encaps seed = msg) and
**reproduces the `.rsp` pk/sk/ct/ss 20/20 fields PASS over the first 5
ML-KEM-768 vectors** (decaps ss match: yes on all 5). Conclusion: the
implementation matches the official FIPS 203 vectors; only the KAT
*procedure* differs. ML-DSA could not be checked this way — liboqs
0.16.0 exposes no derand keypair API for signatures (see
docs/claim-evidence-index.md, NV7).

[FAKTA] Correction to the research record: the `.rsp` files contain
**1,000 count blocks each** (0–999), not 100 as an earlier note said.
Verified by parsing on 22 Nov 2026 and recorded in
data/kat_subset.json (which keeps the first 5 ML-KEM-768, first 3 of each
other set, plus the full-file SHA-256s).

## Focused tests — results

[FAKTA] Full tables: outputs/input_checks.md, outputs/tail_mutation.md,
outputs/timing_probes.md.

- **Input checks (RUSTSEC-2026-0585):** non-reduced encapsulation keys
  (4 coefficients per key raised by q=3329, 20 keys per set) accepted
  **0/20 on ML-KEM-512, 0/20 on ML-KEM-768, 0/20 on ML-KEM-1024** —
  FIPS 203 §7.2 modulus check enforced; the vulnerability does NOT
  reproduce against liboqs 0.16.0 (negative finding). Tampered
  decapsulation keys (one byte flipped in the stored H(ek) region and
  separately in the embedded ek region) make decaps return an explicit
  **ERROR in all 6 cases** — FIPS 203 §7.3 hash check, not implicit
  rejection. The PQClean snapshot control accepts **20/20** (ss matched
  original sk 0/20) — the vulnerable baseline shape reproduced.
- **Tail mutation:** all 1088 byte positions of a valid ML-KEM-768
  ciphertext XOR 0x01, one at a time: **0 accepted, 1088 implicitly
  rejected, 0 errors**.
- **Timing probes:** 1000 decaps of valid ciphertexts vs 1000 of random
  invalid ciphertexts (ML-KEM-768, single core): means 19.15 vs 19.09 us,
  difference **0.061 us vs 3-sigma threshold 0.397 us — NO detectable
  difference**. A chosen-ciphertext oracle crafting division-specific
  inputs is not available through the public API, so no
  division-specific timing claim is made. ML-DSA-65 sign (1000x):
  median 126.08, p95 377.72, p99 575.05 us, monotone-decreasing
  histogram from a ~64 us floor, consistent with an abort loop; the
  iteration count is not API-observable, so no time-vs-iteration
  correlation was measurable.
- **Disassembly census:** **0 `div`/`idiv`** in the whole ML-KEM-768
  X86_64 implementation, 0 in the C-ref implementation, and 0 in each of
  the 12 decaps-path symbols of the linked `speed_kem` binary.
  `poly_frommsg` (gcc): no secret-dependent branch — fully unrolled
  arithmetic masking, exactly 1 conditional jump (fixed-trip loop-back
  `jne`). The Clang 15–18 reproduction was NOT run (no Clang on this
  machine); the gcc check is a substitute, stated plainly.

## Limitations

- Timings are for one shared-VM machine (4 vCPU AMD EPYC 9D25); they are
  not a claim about any other CPU. Means are polluted by host stalls;
  use the medians.
- The ML-DSA KAT check is procedure-blocked (no derand keypair API);
  ML-DSA correctness rests on `test_sig` + the 0/1000 verify failures,
  not on a `.rsp` byte comparison.
- Power/EM traces were not measured; F-D2 rests on code reading plus
  the cited literature.
- The Clang 15–18 `poly_frommsg` reproduction was not run (no Clang).
- The resolved transitive dependency tree of the ledger build was not
  inspected (manifest-level statement only).

See docs/claim-evidence-index.md for the full claim list and the
not-verified section.
