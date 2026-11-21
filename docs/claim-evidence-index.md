# Claim–evidence index

Every substantive claim in this pack carries one label:
**[FAKTA]** = verified against a named primary source or a runnable
script with unedited output; **[ESTIMASI]** = a modelled or reported
number, never a measured fact; **[ANALISIS]** = interpretation.
Claims are numbered C (verified), E (estimate), NV (not verified).
Evidence is a file in this pack or a source in docs/SOURCES.md.

## Verified claims (C)

| ID | Claim | Evidence |
|----|-------|----------|
| C1 | liboqs 0.16.0, tag commit 5a1a854b0dc9f2141bdc771c555ee60c37950183, tree 8e0a3a68b247f821ed535a141aa896a7fda59d2d, released 9 Jul 2026 | data/pins.json; scripts/build_liboqs.sh verifies the pin |
| C2 | ML-KEM comes from vendored mlkem-native v1.2.0; ML-DSA from mldsa-native (not PQClean code) | liboqs 0.16.0 tree src/kem/ml_kem/, src/sig/ml_dsa/; docs/SOURCES.md §2.1 |
| C3 | Scoped minimal build (ML-KEM 512/768/1024 + ML-DSA 44/65/87) builds in ~53 s and contains x86_64 + C-ref backends | outputs/build.log (live run); docs/benchmark.md |
| C4 | ML-KEM-768 speed_kem means agree between full and scoped builds (keygen 15.64 vs 16.01 us, decaps 19.58 vs 19.58 us) | data/speed_kem_MLKEM768.log; docs/benchmark.md |
| C5 | Independent re-timing medians (N=1000/op, single core): ML-KEM-512 keygen 8.70 / encaps 10.01 / decaps 13.71 us; ML-KEM-768 15.19 / 13.68 / 18.57 us; ML-KEM-1024 17.66 / 19.46 / 25.88 us; ML-DSA-44 sign 89.96 / verify 32.59 us; ML-DSA-65 sign 129.05 / verify 48.08 us; ML-DSA-87 sign 159.10 / verify 70.51 us | data/retime.log; outputs/benchmark_latency.md |
| C6 | Repeat run reproduced every median within ~15%; ML-DSA-65 sign median 129.05 us in both runs | data/retime-repeat.log |
| C7 | Sizes equal FIPS 203 Table 3 / FIPS 204 Table 2 exactly for all 6 sets | data/retime.log; outputs/benchmark_sizes.md; docs/SOURCES.md §1.1, §1.3 |
| C8 | Decaps ss mismatches 0/1000 per KEM set; verify failures 0/1000 per signature set | data/retime.log |
| C9 | ML-DSA signature length constant (min = max = nominal max) in all 1000 trials per set | data/retime.log |
| C10 | Peak RSS: speed_kem ML-KEM-768 11,444 KiB (11.2 MiB); speed_sig ML-DSA-65 11,608 KiB (11.3 MiB) | data/mem-profile.log, data/mem-profile-sig-only.log; outputs/memory.md |
| C11 | Direct kat_kem/kat_sig vs .rsp fails 0/45 fields (ML-KEM-768 0/25, ML-DSA-65 0/20) — procedure mismatch, not an implementation bug | data/kat-check.log; outputs/kat_fidelity.md |
| C12 | liboqs count-0 seed is byte-exact the first output of the SP 800-90A AES-256-CTR-DRBG seeded with entropy 0..47 (independent Python re-implementation); the .rsp count-0 seed is not in that stream | data/kat-check.log |
| C13 | Feeding .rsp d\|\|z / msg through the derand API reproduces .rsp pk/sk/ct/ss 20/20 PASS over the first 5 ML-KEM-768 vectors | data/kat-derand-check.log; outputs/kat_fidelity.md |
| C14 | .rsp files contain 1,000 count blocks each (0–999); an earlier note said 100 — corrected | data/kat_subset.json; data/kat-check.log ("vectors in .rsp: 1000") |
| C15 | Non-reduced encapsulation keys accepted 0/20 per set on liboqs 0.16.0 (FIPS 203 §7.2 enforced); RUSTSEC-2026-0585 does NOT reproduce | data/input-check.log; outputs/input_checks.md |
| C16 | Tampered decapsulation keys (H(ek) and embedded-ek flips) return explicit ERROR in all 6 cases (FIPS 203 §7.3, not implicit rejection) | data/input-check.log |
| C17 | PQClean snapshot ML-KEM-768/clean accepts 20/20 non-reduced keys; decaps ss matched original sk 0/20 (vulnerable baseline reproduced) | data/pqclean-check.log |
| C18 | Tail mutation: 0 accepted / 1088 implicitly rejected / 0 errors over all ML-KEM-768 ct byte positions | data/tail-mutation.log; data/tail-mutation-positions.txt |
| C19 | Valid vs random-invalid ct decaps timing: mean difference 0.061 us vs 3-sigma threshold 0.397 us — NO detectable difference | data/timing-probe.log; data/timing-valid.csv; data/timing-invalid.csv |
| C20 | 0 div/idiv in the whole ML-KEM-768 X86_64 implementation, 0 in C-ref, 0 in each of 12 decaps-path symbols of the linked binary | data/disasm-check.log; data/div-census-X86_64.asm; data/div-census-C-ref.asm |
| C21 | gcc-built poly_frommsg: no secret-dependent branch; 1 conditional jump (fixed-trip loop back-edge) | data/disasm-check.log; data/poly_frommsg_x86_64.asm |
| C22 | ML-DSA-65 sign distribution (1000x): median 126.08, p95 377.72, p99 575.05 us, monotone-decreasing histogram from a ~64 us floor — consistent with an abort loop; iteration count not API-observable | data/timing-probe.log; data/timing-sign.csv |
| C23 | mlkem-native implements FIPS 203 §7.2 modulus check (mlk_kem_check_pk, kem.c:43) and §7.3 hash check (mlk_kem_check_sk, kem.c:76), both called unconditionally | docs/side-channel-review.md §2.5; liboqs tree mlkem/src/kem.c |
| C24 | FO comparison is a single full-length constant-time memcmp (kem.c:422, 768/1088/1568 bytes for 512/768/1024) | docs/side-channel-review.md §2.4; data/tail-mutation.log |
| C25 | Rejected ML-DSA challenges are computed, explicitly declassified as public (sign.c:718-722), and discarded — the exact surface of the published power/EM attacks (F-D2, Medium) | docs/side-channel-review.md §3.5; Zhou TCHES 2025(4); Zhao ePrint 2026/056 |
| C26 | Keypair PCT is compiled out in the liboqs build (MLK_CONFIG_KEYGEN_PCT commented out; stubs return 0) | docs/side-channel-review.md §2.6, §3.7; kem.c:129-203 |
| C27 | RNG failure cannot propagate through the liboqs randombytes glue (void OQS_randombytes; built-in RNGs exit() on failure) | docs/side-channel-review.md §2.9, §3.3 |
| C28 | Backend error codes −2/−3 are cast verbatim to OQS_STATUS (only error value −1) | docs/side-channel-review.md §4.3 |
| C29 | No pure-timing ML-DSA key recovery is on record; abort-loop iteration count is not returned in any value | docs/side-channel-review.md §3.1; docs/SOURCES.md §3.5 |
| C30 | FIPS 203 errata: 2 entries, both editorial (2025-03-31 App. A zeta list; 2025-10-17 §5.3 Alg 15 comment) | data/fips-203-potential-updates.xlsx (SHA-256 edf899c8…); data/fips-203-potential-updates-extract.txt |
| C31 | FIPS 204 errata: 12 entries, all editorial; Repetitions corrected to 4.36/5.14/3.91 and App. C Table 3 loop limit to 821 | data/fips-204-potential-updates.xlsx (SHA-256 5bc93ce6…); data/fips-204-potential-updates-extract.txt |
| C32 | wolfSSL affected versions (NVD/CNA): AVX2 5.7.0–5.9.1 (CVE-2026-10097), NEON 5.7.4–5.9.1 (CVE-2026-6330); fixed in 5.9.2 | docs/SOURCES.md §3.2 |
| C33 | KyberSlash2 reference-code patch date 30 Dec 2023 (kyberslash.cr.yp.to/libraries.html) | docs/SOURCES.md §3.1 |
| C34 | postfiatd (HEAD 24c5487d) contains zero lattice code; conanfile.py pins openssl/1.1.1w; CMakeLists.txt:88 requires OpenSSL 1.1.1; OpenSSL 3.5.0 (8 Apr 2025) is the first release with native ML-KEM/ML-DSA/SLH-DSA | docs/postfiatd-integration.md; docs/SOURCES.md §4 |
| C35 | 26 findings in the register: 1 Medium, 7 Low, 5 Informational, 13 Negative-result | docs/side-channel-review.md §1; data/findings.csv; outputs/findings.md |
| C36 | Every generated table is a deterministic function of data/ (generate_tables.py); a re-run produces byte-identical outputs/*.csv, outputs/*.md and outputs/generate_tables.log | scripts/generate_tables.py; outputs/generate_tables.log (GENERATE VERDICT: PASS) |

## Estimates (E)

| ID | Claim | Basis |
|----|-------|-------|
| E1 | Timing medians reproduce within ~15% run to run on this machine (worst observed case ML-KEM-768 keygen 15.19 → 12.97 us) | data/retime.log vs data/retime-repeat.log; the live-run consistency check allows 25% |
| E2 | ML-DSA signing tail budget: p99 ≈ 4.6x the median (ML-DSA-65: 592.09 vs 129.05 us) — a ledger signing path should budget for the tail | data/retime.log; [ANALISIS] |
| E3 | Scoped-build measurements stand in for the full build (speed_kem means agree within ~2%) | data/speed_kem_MLKEM768.log; docs/benchmark.md |

## Not verified (NV)

| ID | Claim / limitation | Why it stays unverified |
|----|--------------------|-------------------------|
| NV1 | **Das paper figures** (98.0% of 2,048 coefficients from 400 chosen ciphertexts on AVX2; 98.5% from 600 on NEON; full recovery ~1,300 ciphertexts; query budget 10⁵–10⁶ decapsulations) | ePrint 2026/1682 PDF returned HTTP 403 on a fresh fetch 22 Nov 2026 and was not retried. Figures rest on the postquantum.com write-up only; NVD CVE-2026-10097 ("approximately 98% success using roughly 350 chosen ciphertexts") corroborates the magnitude, not the per-coefficient numbers. The pack does not cite the figures as read-from-paper. |
| NV2 | Whether the wolfSSL 5.9.2 GitHub release notes themselves tagged both CVEs as Medium | The vendor page (read 22 Nov 2026) tags 10097 High / 6330 Med; the GitHub release-notes text was not directly read. The pack cites NVD CVSS 3.1 (7.5 High / 6.5 Medium) and the vendor page instead. |
| NV3 | The original Purnal poly_frommsg report (location and exact date on pqc-forum / groups.google.com) | Only the PQShield blog (3 Jun 2024) and Bernstein's slide reference to a June 2024 demo were found. The blog is the verified public disclosure. |
| NV4 | Any ML-DSA-specific pure-timing key-recovery attack | None found — this absence is itself the finding (F-D1), reported as a negative result with a detection threshold, not as proof of security. |
| NV5 | **Clang 15–18 poly_frommsg reproduction** (the PQShield disclosure's exact shape) | No Clang is installed on this machine; the reproduction was not attempted. The gcc disassembly check is a substitute, stated plainly in data/disasm-check.log and docs/benchmark.md. |
| NV6 | Power/EM traces of ML-DSA signing (F-D2 rests on code reading + literature, not a measurement) | Not measurable on this VM. |
| NV7 | ML-DSA KAT byte comparison against the official .rsp (no derand keypair API in liboqs 0.16.0 for signatures) | liboqs 0.16.0 exposes no derand keypair API for signatures. ML-DSA correctness rests on test_sig + 0/1000 verify failures, not on a .rsp byte comparison. |
| NV8 | AVX2 poly_decompose / poly_use_hint / polyz_unpack line review (F-D11) | Not line-reviewed in this pass; residual coverage gap, stated openly. |
| NV9 | PQClean META.yml shared-secret length for ML-KEM-512 | Masked in tool output during the check; not needed for this pack. |
| NV10 | PQClean tag dates for round2/round3 | Releases page lists them without visible dates; the GitHub API releases endpoint was rate-limited during the check. Only tag names and commit SHAs (6cd3167, 90630db) are verified. |
| NV11 | ref/nistkat/PQCgenKAT_sign.c in pq-crystals/dilithium | GitHub API directory listing returned HTTP 403 and was not retried. By symmetry with kyber it is expected there, but not directly observed. |
| NV12 | The resolved transitive dependency tree of the ledger build | Manifests pin no lattice-capable dependency, but the resolved tree was not inspected; a Conan install/graph resolution is needed for a complete statement. |
| NV13 | Numeric liboqs performance figures from the vendor (ops/s or cycles on a named CPU) | Not present in the README or fetchable docs text; the OQS benchmarking page renders charts via JS. This pack measures instead of quoting. |
| NV14 | The first input-check run's buggy layout (rho assumed first) — superseded | The v1 logs are preserved as data/input-check-v1-buggy-layout.log and data/pqclean-check-v1-buggy-layout.log for audit; the canonical logs are the corrected re-runs. The bug itself is documented in docs/benchmark.md and in the logs. |
| NV15 | Timings on any CPU other than the measured one (4 vCPU AMD EPYC 9D25) | All measurements are for one shared-VM machine. Do not quote them as liboqs performance on other hardware. |
