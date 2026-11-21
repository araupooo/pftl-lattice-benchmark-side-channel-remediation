# SOURCES — Lattice Engine Benchmarking and Side-Channel Review

**Pack note:** this file is the research verification pass of 22 Nov 2026, adapted into this pack. Items marked "verified in the research report" were read directly from the primary source during that pass; the underlying research report is not part of this pack, and the claims here stand on the recorded evidence below plus this pack's own measurements (data/ and outputs/). Where the pack's own parsing corrected a research-pass statement (KAT vector counts: 1,000 not 100), the correction is marked inline.

- **Access date for all web sources:** 22 November 2026.
- **Scope note:** this file lists every source the benchmarking and side-channel review relies on, what was verified from each source, and which claims remain unverified. Every substantive claim carries one label: [FAKTA] = verified against a named primary source with a date; [ESTIMASI] = a modelled/reported number, never a measured fact; [ANALISIS] = interpretation.
- **Verification work:** items marked "verified 22 Nov 2026 (research verification pass)" were read directly from the primary source on that date. Items marked "verified in the research report, 22 Nov 2026" were read directly during the underlying research; their evidence is recorded in the research report.

## 1. Standards and errata

### 1.1 NIST FIPS 203 (ML-KEM)

- **Source:** NIST, FIPS 203, "Module-Lattice-Based Key-Encapsulation Mechanism Standard", published 13 August 2024, DOI 10.6028/NIST.FIPS.203.
  - PDF: https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.203.pdf
  - CSRC record: https://csrc.nist.gov/pubs/fips/203/final
- **Verified in the research report, 22 Nov 2026:** [FAKTA] §8 Table 2 (n = 256, q = 3329; ML-KEM-512: k=2, η₁=3, η₂=2, du=10, dv=4; ML-KEM-768: k=3, η₁=2, η₂=2, du=10, dv=4; ML-KEM-1024: k=4, η₁=2, η₂=2, du=11, dv=5); §8 Table 3 sizes — 512: ek 800 / dk 1632 / ct 768 / ss 32 B; 768: 1184 / 2400 / 1088 / 32 B; 1024: 1568 / 3168 / 1568 / 32 B; categories 1/3/5; ML-KEM-768 is NIST's recommended default (§8, "Selecting an appropriate parameter set").

### 1.2 NIST FIPS 203 errata spreadsheet — contents verified

- **Source:** https://csrc.nist.gov/files/pubs/fips/203/final/docs/fips-203-potential-updates.xlsx
- **Verified 22 Nov 2026 (research verification pass):** [FAKTA] the file was downloaded (23,849 bytes; SHA-256 `edf899c89762449f43d7713883caeefc2e4ae9ae98d5a76b339547db22cb3ac7`) and extracted with openpyxl 3.1.2. Its header identifies it as "Potential Updates (Errata)", "Document: NIST FIPS 203", "Publication Date: August 2024", "Released: 2024-08-13", "PDF: https://doi.org/10.6028/NIST.FIPS.203". It states: "Potential corrections DO NOT introduce new technical requirements" and "Potential corrections ARE NOT official changes, but may be corrected in a future errata update of the publication." It contains **2 entries**, both editorial, neither changing a parameter, a size, or a security property:
  1. [FAKTA] Identified 2025-03-31, Appendix A: "Algorithms 9 and 10 use the zeta values for i = 1, …, 127, however Appendix A also includes the value 1 (corresponding to i = 0)." Potential correction: add the sentence "The value 1, corresponding to i = 0, has been included so that i-th entry of the array would then equal ζ^BitRev_7(i)."
  2. [FAKTA] Identified 2025-10-17, Section 5.3: in Algorithm 15, line 7, the comment reads "decode plaintext m from polynomial v. However, v is not used in the algorithm." Potential correction: the comment will read "decode plaintext m from polynomial w."
- **Provenance caveat:** [FAKTA] the CSRC publication page for FIPS 203 could not be re-fetched during this pass (fetch returned `destination_unavailable`), so the Documentation outlink was not independently observed this pass. The spreadsheet URL follows the same path pattern as the FIPS 204 errata spreadsheet (verified via the CSRC page in the research report), and the downloaded file's own header identifies it as the FIPS 203 errata sheet, which confirms the URL. The CSRC page's Planning Note wording — "We've identified an issue that will be corrected in a future update/revision of this publication. For details, see the 'Errata (potential updates)' spreadsheet listed under 'Documentation.'" (dated 11/17/2025) — was verified from the CSRC page in the research report and corroborated by search results on 22 Nov 2026.
- **Full extraction:** `fips-203-potential-updates-extract.txt` (in data/ of this pack).

### 1.3 NIST FIPS 204 (ML-DSA)

- **Source:** NIST, FIPS 204, "Module-Lattice-Based Digital Signature Standard", published 13 August 2024, DOI 10.6028/NIST.FIPS.204.
  - PDF: https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.204.pdf
  - CSRC record: https://csrc.nist.gov/pubs/fips/204/final
- **Verified in the research report, 22 Nov 2026:** [FAKTA] §4 Table 1 parameter sets (ML-DSA-44 → category 2; ML-DSA-65 → category 3; ML-DSA-87 → category 5); §4 Table 2 sizes — ML-DSA-44: sk 2560 / pk 1312 / sig 2420 B; ML-DSA-65: 4032 / 1952 / 3309 B; ML-DSA-87: 4896 / 2592 / 4627 B; §2.3 core parameters (q = 8,380,417; n = 256; ζ = 1753; d = 13); §4 Table 1 "Repetitions" 4.25 / 5.1 / 3.85 — **superseded by the errata entry below**; the 32-byte seed ξ alone suffices to regenerate the private key (§4 text).

### 1.4 NIST FIPS 204 errata spreadsheet — contents verified

- **Source:** https://csrc.nist.gov/files/pubs/fips/204/final/docs/fips-204-potential-updates.xlsx
- **Verified 22 Nov 2026 (research verification pass):** [FAKTA] the file was downloaded (23,071 bytes; SHA-256 `5bc93ce63bc647e6d1d456cb2d3a171426c15aca4a7a0e0edd40d08b7a34c793`) and extracted with openpyxl 3.1.2. Its header identifies it as "Potential Updates (Errata)", "Document: NIST FIPS 204", "Last updated 7/31/2026", "Publication Date: August 2024", "Released: 2024-08-13", "PDF: https://doi.org/10.6028/NIST.FIPS.204". It states: "Potential corrections DO NOT introduce new technical requirements" and "Potential corrections ARE NOT official changes, but may be corrected in a future errata update of the publication." It contains **12 entries**; all are editorial or clarifying, none changes a key/signature size or a security property. The entries:
  1. [FAKTA] 2024-09-20, Sec. 2.5 and Sec. 7.5: in equations (2.1) and (7.1) the NTT is written as NTT(w)_j = w(ζ_j) with "where ζ_j = w(ζ^{2BitRev_8(i)+1}) mod q", which would evaluate w twice. Potential correction: replace with "where ζ_j = ζ^{2BitRev_8(i)+1} mod q", in both sections.
  2. [FAKTA] 2024-10-17, Sec. 6.2 and Sec. 6.3: the message variable should be M′ (not M) in the sentence "Before the message M is signed, it is concatenated with the public key hash tr and hashed down to a 64-byte message representative µ using H" and in the first sentence of Sec. 6.3.
  3. [FAKTA] 2025-12-02, Various: several intra-document links are broken — Algorithms 4, 5, 9, 10, 11, 12, 13, 14, 49 and footnotes 1, 5, 6, and 13. Potential correction: the links will be corrected.
  4. [FAKTA] 2025-12-02, Sec. 2: AES is defined but never used; in the infinity-norm definition the w in "w[i]" is not bolded; in Sec. 2.4.2 the vectors v[0], v[1], … are not bolded. Potential correction: AES will be removed from the acronyms; the vectors will be bolded.
  5. [FAKTA] 2025-12-02, Sec. 3: in footnote 2 the vector 'b' is not bolded; in Sec. 3.3, c̃ is defined as w1 || mu when it should be mu || w1 (as in Algorithm 7). Potential correction: bold b; use mu || w1.
  6. [FAKTA] 2025-12-02, Sec. 5: Algorithms 1, 2, and 4 use "NULL" to denote a random-number-generation failure; "NULL" is not defined and should probably be ⊥, as used elsewhere. Potential correction: NULL will be changed to ⊥.
  7. [FAKTA] 2025-12-02, Sec. 6: polynomial vectors are called polynomials in a few places ("the uncompressed public-key polynomial t", twice; "a hint polynomial h", once); Algorithm 6 mentions PowerTwoRound instead of Power2Round; in Algorithm 8 line 7 the outermost parentheses on H are unnecessary. Potential correction: "polynomial vectors"; Power2Round.
  8. [FAKTA] 2025-12-02, Sec. 7: the text above Algorithm 28 says w1Encode is used in ML-DSA.Sign; it is actually used in ML-DSA.Sign_internal and ML-DSA.Verify_internal. Potential correction: refer to the internal algorithms.
  9. [FAKTA] 2025-12-02, App. A: the Montgomery reduction described differs from the Dilithium reference implementation — (a) the upper bound of the input range is incorrectly given as inclusive when it should be exclusive, (b) it does not clarify that t should use the "signed" representative mod 2^32 and be sign-extended, (c) it misleadingly states the output is less than 2q in absolute value when it is less than q. Potential correction: Appendix A will be rewritten to match the reference implementation.
  10. [FAKTA] 2026-02-23, Sec. 5.3: rather than return ⊥ in step 2 of Algorithm 3, it is more appropriate to return "false". Potential correction: step 2 will return "false" instead of ⊥.
  11. [FAKTA] 2026-02-27, Sec. 7.4: Algorithm 40 UseHint says it outputs 0 ≤ r1 ≤ (q−1)/2γ₂; the real upper bound is 1 smaller, 0 ≤ r1 ≤ (q−1)/2γ₂ − 1. Potential correction: the bound will be corrected.
  12. [FAKTA] 2026-07-31, Sec. 4 and App. C: "The numbers given for Repetitions in Table 1 are not quite accurate. This is a result of the overall failure rate for signing being affected by line 28 of Algorithm 7, which had not been taken into account prior. The new numbers are 4.36, 5.14, and 3.91 (instead of 4.25, 5.1, and 3.85). As a result, the minimum allowable limit of loop iterations for internal signing in Table 3 is computed to be 821 (instead of 814)." Potential correction: Table 1 Repetitions updated to 4.36 / 5.14 / 3.91; Table 3 minimum loop limit updated to 821.
- **Consequence for the review:** [ANALISIS] the FIPS 204 PDF's printed Repetitions figures (4.25 / 5.1 / 3.85) and Appendix C Table 3 loop limit (814) are superseded by this potential correction (4.36 / 5.14 / 3.91; limit 821). Because the spreadsheet states the corrections are not official changes, the review cites the PDF values as the standard's text and the spreadsheet values as the pending correction, and does not treat either as a measured fact.
- **Full extraction:** `fips-204-potential-updates-extract.txt` (in data/ of this pack).

### 1.5 Official KAT vectors

- **Source:** Post-Quantum Cryptography KAT repository, https://github.com/post-quantum-cryptography/KAT (public, archived; created 2023-10-05). README: "This repository contains a set of randomly generated Known Answer Test (KAT) vectors for FIPS-203 and FIPS-204… generated by an implementation that is independent of the one used by NIST. They have been tested against multiple implementations, including both hardware and software solutions."
- **Verified in the research report, 22 Nov 2026:** [FAKTA] ML-KEM files in `MLKEM/`: `kat_MLKEM_512.rsp` (8,428,890 B), `kat_MLKEM_768.rsp` (12,012,890 B), `kat_MLKEM_1024.rsp` (16,236,890 B); **1,000 count blocks per file** (corrected 22 Nov 2026: the .rsp files were parsed and contain 1,000 `count =` blocks each, 0–999; an earlier note said 100, which was wrong); AES-CTR-DRBG per SP 800-90A; fields count, z, d, msg, seed, pk, sk, ct, ss, ct_n, ss_n; no key-validation tests. ML-DSA files in `MLDSA/`: six sets per level — `kat_MLDSA_{44,65,87}_{det,hedged}_{pure,hashed,raw}.rsp` (18 files).
- **Source:** pq-crystals Kyber, https://github.com/pq-crystals/kyber — `ref/nistkat/` contains `PQCgenKAT_kem.c`, `rng.c`, `rng.h` (KAT generator, not .rsp files). Verified in the research report, 22 Nov 2026.

## 2. Engines

### 2.1 liboqs 0.16.0

- **Source:** https://github.com/open-quantum-safe/liboqs/releases (0.16.0, 9 Jul 2026, tag commit `5a1a854b0dc9f2141bdc771c555ee60c37950183`); README https://raw.githubusercontent.com/open-quantum-safe/liboqs/main/README.md; benchmarking visualizations https://openquantumsafe.org/benchmarking.
- **Verified in the research report, 22 Nov 2026 (local clone of tag 0.16.0):** [FAKTA] ML-KEM at `src/kem/ml_kem/` and ML-DSA at `src/sig/ml_dsa/`; ML-KEM now comes from `pq-code-package/mlkem-native` (v1.2.0) and ML-DSA from `pq-code-package/mldsa-native`, not PQClean code; benchmark tooling in `tests/` (`test_kem`, `test_sig`, `kat_kem`, `kat_sig`, `speed_kem`, `speed_sig`, `speed_sig_stfl`, `test_kem_mem`, `test_sig_mem`); `speed_kem`/`speed_sig` report iterations, total time, mean time (µs), population stdev, and cycle counts via `rdtsc`/PMU (`tests/ds_benchmark.h`, `TIME_OPERATION_SECONDS`); build requires CMake ≥ 3.15 and OpenSSL ≥ 1.1.1 when `OQS_USE_OPENSSL` is on; the README contains no numeric performance figures.

### 2.2 PQClean (archived snapshot)

- **Source:** https://github.com/PQClean/PQClean; releases/tags https://github.com/PQClean/PQClean/releases.
- **Verified in the research report, 22 Nov 2026 (local clone):** [FAKTA] archived/read-only 4 Aug 2026; HEAD `0586a824fc0d49df0b6b6e9179d8d15d06d0974f` ("Merge pull request #614 from PQClean/readme-retirement-alternatives"); tags `round3` (`6cd3167`) and `round2` (`90630db`); layout `crypto_kem/ml-kem-{512,768,1024}/`, `crypto_sign/ml-dsa-{44,65,87}/` with `META.yml` plus `clean/`, `avx2/`, `aarch64/` subdirs; no `test/test_kem.c`, `test/test_sig.c`, or `test/bench_*` files; harnesses are Python pytest modules plus `test/crypto_kem/functest.c`, `nistkat.c`, `testvectors.c`, `printparams.c`, `hqckat.c`; constant-time requirements: "No branching on secret data (dynamically checked using valgrind)" and "No access to secret memory locations (dynamically checked using valgrind)"; retirement notice points to mlkem-native / mldsa-native / slhdsa-c / liboqs.

### 2.3 RUSTSEC-2026-0585 (ML-KEM input checks)

- **Source:** https://rustsec.org/advisories/RUSTSEC-2026-0585.html (read verbatim in the research report, 22 Nov 2026); corroborated by https://osv.dev/vulnerability/RUSTSEC-2026-0585.
- **Verified in the research report, 22 Nov 2026:** [FAKTA] "ML-KEM does not perform the FIPS 203 input checks", package `pqcrypto-mlkem`, reported and issued 20 November 2026; "`pqcrypto-mlkem` wraps PQClean's ML-KEM implementation, which does not perform the input checks required by FIPS 203"; "encapsulation does not perform the encapsulation key modulus check (section 7.2), so encapsulation keys with coefficients that are not reduced modulo q are accepted"; "decapsulation does not perform the decapsulation key hash check (section 7.3), so a decapsulation key whose stored hash or embedded encapsulation key has been altered is accepted"; "With the Wycheproof ML-KEM vectors, **108 / 112 / 116 invalid encapsulation keys (ML-KEM-512 / -768 / -1024) and 2 invalid decapsulation keys per parameter set** are accepted"; "This does not disclose key material. It is a FIPS 203 non-conformance"; "The crate is unmaintained (see RUSTSEC-2026-0161) and no patched version is expected. Migrating to a maintained implementation, such as the `ml-kem` crate, is recommended." Affected functions `pqcrypto_mlkem::mlkem{512,768,1024}::{encapsulate,decapsulate}` ≤ 0.1.1.

## 3. Side-channel cases

### 3.1 KyberSlash

- **Source:** https://kyberslash.cr.yp.to/libraries.html (version 2025.08.23 of the page) and https://kyberslash.cr.yp.to/papers.html; paper: Bernstein et al., "KyberSlash: Exploiting secret-dependent division timings in Kyber implementations", IACR TCHES 2025, Vol. 2, pp. 209–234, DOI https://doi.org/10.46586/tches.v2025.i2.209-234; artifact https://artifacts.iacr.org/tches/2025/a9/.
- **Verified 22 Nov 2026 (research verification pass, primary page read verbatim):** [FAKTA] for `pq-crystals/kyber/ref`: "patched 1 December 2023 for KyberSlash1" and "patched 30 December 2023 for KyberSlash2". This confirms the 30 Dec 2023 reference-implementation KyberSlash2 patch date used in the research report; the secondary-source date of 29 Dec 2023 is not supported by the primary page. [FAKTA] For liboqs (`liboqs/src/kem/kyber`): "patched 15 December 2023 for KyberSlash1" and "patched 8 January 2024 for KyberSlash2", security announcement 16 January 2024.
- **Verified in the research report, 22 Nov 2026:** [FAKTA] KyberSlash1 = division in `poly_tomsg`; KyberSlash2 = divisions in `poly_compress` / `polyvec_compress`; key-recovery times: KyberSlash1 on Raspberry Pi 2 (Cortex-A7), Kyber512, 10/10 experiments, 2–4 hours; KyberSlash2 on Cortex-M4, Kyber768, 10/10 experiments, within 4 minutes.

### 3.2 wolfSSL incomplete FO ciphertext comparison (CVE-2026-10097, CVE-2026-6330) — affected-version conflict resolved

- **Sources read 22 Nov 2026 (research verification pass):**
  - NVD, CVE-2026-10097: https://nvd.nist.gov/vuln/detail/CVE-2026-10097 (published Jun 25, 2026; last modified Jun 26, 2026; source: wolfSSL Inc.)
  - NVD, CVE-2026-6330: https://nvd.nist.gov/vuln/detail/CVE-2026-6330 (published Jun 25, 2026; last modified Jun 27, 2026; source: wolfSSL Inc.)
  - OX Radar, CVE-2026-10097: https://www.ox.security/ox-radar/cve/CVE-2026-10097/
  - OX Radar, CVE-2026-6330: https://www.ox.security/ox-radar/cve/CVE-2026-6330/
  - wolfSSL vendor advisory page: https://www.wolfssl.com/docs/security-vulnerabilities/
  - wolfSSL 5.9.2 release blog: https://www.wolfssl.com/forums/post8841.html (also https://www.wolfssl.com/archives/2026/06/)
  - PostQuantum.com write-up (secondary): https://postquantum.com/security-pqc/wolfssl-mlkem-key-recovery-fo-check/ (15 Aug 2026)
- **Resolved bounds — [FAKTA]:** the NVD records, whose Affected Products source is wolfSSL Inc. (the CVE Numbering Authority for these records), state:
  - CVE-2026-10097 (AVX2): "Affected 5.7.0 <=5.9.1 (semver)".
  - CVE-2026-6330 (NEON): "Affected 5.7.4 <=5.9.1 (semver)".
  These match the postquantum.com ranges (AVX2 5.7.0–5.9.1; NEON 5.7.4–5.9.1).
- **Where the conflicting bounds came from — [FAKTA]:** the OX Radar pages state the ranges only for the Julia binary package `wolfSSL_jll`, not for the wolfSSL product: CVE-2026-10097, "Julia | wolfSSL_jll | >=5.7.2+0, <5.9.2+0 | 5.9.2+0"; CVE-2026-6330, "Julia | wolfSSL_jll | >=5.8.4+0, <5.9.2+0 | 5.9.2+0". [ANALISIS] The ≥5.7.2 / ≥5.8.4 lower bounds are the earliest Julia-packaged vulnerable versions, not the product's first vulnerable versions; the conflict was a comparison of two different scopes (ecosystem package vs product).
- **Recommendation:** [ANALISIS] the review cites the NVD/CNA product ranges — AVX2 5.7.0–5.9.1, NEON 5.7.4–5.9.1, fixed in 5.9.2 — and notes the OX Julia-package ranges only if a Julia deployment is in scope.
- **Verified 22 Nov 2026 (research verification pass):** [FAKTA] NVD CVE-2026-10097 description: "wolfSSL's AVX2-optimized ML-KEM implementation (mlkem_cmp_avx2) compares only 1536 of the 1568 ciphertext bytes during the Fujisaki-Okamoto re-encryption check in ML-KEM-1024 decapsulation. Ciphertexts that differ from the expected re-encryption solely in bytes 1536-1567 bypass implicit rejection and are accepted as valid, breaking IND-CCA2 security." "A proof of concept recovered a full ML-KEM-1024 private key with approximately 98% success using roughly 350 chosen ciphertexts." "The flaw is a deterministic logic error and does not rely on timing measurements." NVD lists CVSS 4.0 vector `CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:H/VI:L/VA:N/SC:N/SI:N/SA:N` (CNA: wolfSSL Inc.) and notes "NVD assessment not yet provided"; the 3.1 score 7.5 High (`CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N`, CWE-697) is the OX/NVD-derived record. [FAKTA] NVD CVE-2026-6330 description: "The ML-KEM ARM64 NEON ciphertext comparison only compares half of the input, breaking the Fujisaki-Okamoto transform's implicit rejection and weakening IND-CCA2 security on that code path." CVSS 4.0 vector `CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:L/VI:L/VA:N/SC:N/SI:N/SA:N` (CNA: wolfSSL Inc.); 3.1 score 6.5 Medium (`CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:N`, CWE-327).
- **Verified 22 Nov 2026 (research verification pass):** [FAKTA] wolfSSL's vendor advisory page lists CVE-2026-10097 as "High" — "Fixed in PR 10430", "27 days", "5.9.2" — and CVE-2026-6330 as "Med" — "Fixed in PR 10192", "8 days", "5.9.2". The vendor page gives no affected-version range, only the fixing release. [FAKTA] The wolfSSL 5.9.2 release blog states: "wolfSSL 5.9.2 has been released with a broad range of new features and enhancements around Post-Quantum Cryptography" and "This release addressed 32 CVEs in total". The GitHub release-notes text itself was not directly read in this pass, so the earlier secondary claim that the release notes "tagged both as Medium" is not confirmed here; the review uses the vendor advisory page's current High/Med tags and the NVD CVSS scores instead.
- **Reporters — [FAKTA]:** NEON bug independently discovered by Nicholas Carlini (Anthropic); AVX2 bug by Bhabani Sankar Das (@007bsd). Fixed in wolfSSL 5.9.2, released 23 Jun 2026; both CVEs published 25 Jun 2026.

### 3.3 Das paper — ePrint PDF still unread (see §6)

- **Source:** Das, B. S., "Incomplete Ciphertext Comparison in ML-KEM: From an IND-CCA2 Break to Key Recovery", IACR ePrint 2026/1682 (posted 15 Aug 2026) — https://eprint.iacr.org/2026/1682.pdf.
- **Verified 22 Nov 2026 (research verification pass):** [FAKTA] a single fresh fetch of the ePrint PDF returned HTTP 403 (3,282-byte HTML error page, not a PDF); no further retries were made. The paper's figures therefore remain unverified from the paper itself.
- **Partial corroboration, not a substitute:** [FAKTA] the NVD CVE-2026-10097 description (CNA: wolfSSL Inc.) states the proof of concept "recovered a full ML-KEM-1024 private key with approximately 98% success using roughly 350 chosen ciphertexts". [ANALISIS] This is consistent in magnitude with the secondary figures but does not verify the per-coefficient claims (98.0% of 2,048 coefficients from 400 chosen ciphertexts on AVX2; 98.5% from 600 on NEON), which remain secondary-source only.

### 3.4 Clang `poly_frommsg` branch (PQShield, 2024)

- **Source:** PQShield, "PQShield plugs timing leaks in Kyber/ML-KEM to improve PQC implementation maturity", 3 Jun 2024 (updated 20 Oct 2026), Antoon Purnal — https://pqshield.com/pqshield-plugs-timing-leaks-in-kyber-ml-kem-to-improve-pqc-implementation-maturity/.
- **Verified in the research report, 22 Nov 2026:** [FAKTA] Clang turned the constant-time, mask-based `poly_frommsg` into a secret-dependent branch; affected x86 Clang 15, 16, 17 and 18 with `-Os`, `-O1`, `-O2 -fno-vectorize`, `-O3 -fno-vectorize`; PQShield's demo recovered an ML-KEM-512 secret key in under 10 minutes on the author's laptop from whole-decapsulation timing; the reference implementation was patched by moving the conditional move into a separate file.

### 3.5 ML-DSA / Dilithium side channels (power/EM and fault — no pure-timing key recovery)

- **Sources (verified in the research report, 22 Nov 2026):**
  - Zhou, Wang, Sun & Yu, "Rejected Signatures' Challenges Pose New Challenges: Key Recovery of CRYSTALS-Dilithium via Side-Channel Attacks", TCHES 2025(4), pp. 817–847, DOI https://doi.org/10.46586/tches.v2025.i4.817-847 — https://tches.iacr.org/index.php/TCHES/article/view/12430.
  - Zhao, Cheng, Qiao, Liu & Zhou, "Rejection Matters: Efficient Non-Profiling Side-Channel Attack on ML-DSA via Exploiting Public Templates", ePrint 2026/056 — https://eprint.iacr.org/2026/056.pdf.
  - "One (Noisy) Bit to Rule Them All: Key Recovery from Randomness Leakage in ML-DSA", Journal of Cryptology 2026, 39:28 — https://ir.cwi.nl/pub/36609/36609.pdf.
  - "Single Trace is All It Takes: Efficient Side-channel Attack on Dilithium", ePrint 2024/512 — http://eprint.iacr.asia/2024/512.pdf.
  - "Finding a Polytope: A Practical Fault Attack Against Dilithium", PKC 2025 — https://link.springer.com/chapter/10.1007/978-3-031-91820-9_9.
- **Verified in the research report, 22 Nov 2026:** [FAKTA] no credible ML-DSA-specific pure-timing key-recovery attack was found; all verified Dilithium/ML-DSA key-recovery results use power/EM traces or faults. [FAKTA] The CDT sampler is a Falcon primitive, not Dilithium's — Dilithium/ML-DSA uses uniform rejection sampling (SHAKE-based).

## 4. Ledger dependency context (local checkout)

- **Source:** local checkout at `~/workspace/postfiatd-amendment/postfiatd`, HEAD `24c5487d9bfc99171380960e4eeb1543a724cfae` ("Update AmendmentTable boundary tests for the 67% majority threshold"), inspected 22 Nov 2026 (research verification pass).
- **Verified 22 Nov 2026 (research verification pass):** [FAKTA] `conanfile.py` pins `openssl/1.1.1w` in its `requires` list (alongside `grpc/1.50.1`, `libarchive/3.8.1`, `nudb/2.0.9`, `soci/4.0.3`, `zlib/1.3.1`; `requirements()` adds `boost/1.83.0`, `date/3.0.4`, `lz4/1.10.0`, `protobuf/3.21.12`, `sqlite3/3.49.1`, `xxhash/0.8.3`, `rocksdb/10.0.1` when enabled, `doctest/2.4.11` as test requirement, `protobuf/3.21.12` as tool requirement). [FAKTA] `CMakeLists.txt:88` requires `find_package(OpenSSL 1.1.1 REQUIRED)`; `CMakeLists.txt:16` sets C++20. [FAKTA] No `conan.lock` or other lockfile is present in the checkout. [FAKTA] Vendored code under `external/` is `ed25519-donna`, `secp256k1`, and `antithesis-sdk` only — no lattice code. The checkout grep in the research report found zero lattice matches in the tree.
- **OpenSSL version vs lattice support — [FAKTA]:** OpenSSL 3.5.0, released 8 Apr 2025, is the first OpenSSL release with native ML-KEM/ML-DSA/SLH-DSA support. Source: OpenSSL 3.5 Series Release Notes, https://openssl-library.org/news/openssl-3.5-notes/, read 22 Nov 2026: "Major changes between OpenSSL 3.4 and OpenSSL 3.5.0 [8 Apr 2025]" — "This release adds the following new features: … Support for PQC algorithms (ML-KEM, ML-DSA and SLH-DSA)", and the default TLS groups/keyshares were changed to prefer hybrid PQC KEM groups ("The default TLS keyshares have been changed to offer X25519MLKEM768 and and X25519").
- **Consequence — [ANALISIS]:** the build pins OpenSSL 1.1.1w, a release line that predates native ML-KEM support by more than two major versions; no pinned dependency in the manifests is a lattice-capable library, and none of the other pinned dependencies (gRPC, Boost, SOCI, RocksDB, protobuf, SQLite3, xxHash, lz4, libarchive, nudb, zlib, doctest) is a post-quantum cryptography provider. Any ML-KEM use through OpenSSL would therefore require a dependency upgrade to OpenSSL ≥ 3.5, not a configuration change. The fully resolved transitive dependency tree was not inspected — that requires running the Conan install/graph resolution, which was not done in this pass — so absence of lattice support in transitive dependencies is stated from the manifests, not from a resolved tree.

## 5. Measurement baseline (local machine)

- **Verified in the research report, 22 Nov 2026:** [FAKTA] gcc 13.3.0, cmake 3.28.3, Python 3.12.3, OpenSSL 3.0.13, 4 vCPUs (AMD EPYC 9D25) with AVX2 + AVX512F + BMI2 + AES; no Clang installed; GitHub reachable over https (`git ls-remote`: liboqs HEAD `f822b059350af22adad99ef6b09a18819bcd49ed`; PQClean HEAD `0586a824fc0d49df0b6b6e9179d8d15d06d0974f`).

## 6. Claims that remain unverified after this pass

- [UNVERIFIED] **Das paper figures** (98.0% of 2,048 coefficients from 400 chosen ciphertexts on AVX2; 98.5% from 600 on NEON; full recovery needing ~1,300 ciphertexts against a Python reference model; total query budget 10⁵–10⁶ decapsulations): the ePrint 2026/1682 PDF returned HTTP 403 on a fresh fetch on 22 Nov 2026 and was not retried. The figures rest on the postquantum.com write-up only, with the NVD CVE-2026-10097 description ("approximately 98% success using roughly 350 chosen ciphertexts") as partial corroboration of magnitude, not of the per-coefficient numbers. The review must not cite the figures as read-from-paper.
- [UNVERIFIED] **Whether the wolfSSL 5.9.2 GitHub release notes themselves tagged both CVEs as Medium:** the vendor security-vulnerabilities page (read 22 Nov 2026) currently tags CVE-2026-10097 High and CVE-2026-6330 Med. The GitHub release-notes text was not directly read in this pass. The review cites the NVD CVSS scores (3.1: 7.5 High / 6.5 Medium) and the vendor page, not the "both Medium" wording.
- [UNVERIFIED] **The original Purnal `poly_frommsg` report on pqc-forum / groups.google.com** (location and exact date): only the PQShield blog (3 Jun 2024) and Bernstein's slide reference to a June 2024 demo were found. The blog post is the verified public disclosure.
- [UNVERIFIED] **Any ML-DSA-specific pure-timing key-recovery attack:** none found — this absence is itself the finding for the ML-DSA timing review, and the review reports it as a negative result with a detection threshold, not as proof of security. A third-party PyPI tool ("pqc-scanner") claims liboqs 0.15.0 ML-DSA-65 is "clean at the C layer" under TVLA timing tests — an unverified tool claim, not a peer-reviewed finding, not relied on.
- [UNVERIFIED] **Numeric liboqs performance figures** (ops/s or cycles on a named CPU): not present in the README or fetchable docs text; the OQS benchmarking page renders charts via JS, so no quotable number could be extracted. The review measures, not quotes.
- [UNVERIFIED] **PQClean tag dates** for `round2`/`round3`: the releases page lists them without visible dates and the GitHub API releases endpoint was rate-limited during the check; only tag names and commit SHAs (`6cd3167`, `90630db`) are verified.
- [UNVERIFIED] **`ref/nistkat/PQCgenKAT_sign.c` in pq-crystals/dilithium:** the GitHub API directory listing returned HTTP 403 and was not retried; the repo root listing confirms `ref/` and `avx2/` exist, but the nistkat contents were not directly observed. (By symmetry with kyber, PQCgenKAT_sign.c + rng.c/rng.h are expected there.) The three ML-DSA-87 hedged KAT files (`kat_MLDSA_87_hedged_{pure,hashed,raw}.rsp`) are likewise pattern-implied, not directly seen — the API listing was truncated just before them.
- [UNVERIFIED] **PQClean META.yml shared-secret length for ML-KEM-512:** the cloned file's value was masked in tool output during the check; other lengths (public key 800, ciphertext 768, secret key 1632) were visible but are not needed here.
- [UNVERIFIED] **The resolved transitive dependency tree** of the ledger build (see §4): the manifests pin no lattice-capable dependency, but the resolved tree was not inspected; a Conan install/graph resolution is needed for a complete statement.
- [RESOLVED in this pass — no longer unverified] **FIPS 203 and FIPS 204 errata spreadsheet contents** (see §1.2, §1.4); **wolfSSL affected-version lower bounds** (see §3.2); **KyberSlash2 reference-code patch date, 30 Dec 2023** (see §3.1); **FIPS 204 Appendix C Table 3 minimum loop limit** — 821, per the 2026-07-31 errata entry (see §1.4, entry 12), superseding the PDF's 814; **whether any ledger dependency ships lattice support** — answered from the manifests in §4, subject to the resolved-tree caveat above.

## 7. Source list (compact)

1. NIST FIPS 203 PDF — https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.203.pdf ; CSRC record https://csrc.nist.gov/pubs/fips/203/final
2. NIST FIPS 203 errata spreadsheet — https://csrc.nist.gov/files/pubs/fips/203/final/docs/fips-203-potential-updates.xlsx (SHA-256 `edf899c89762449f43d7713883caeefc2e4ae9ae98d5a76b339547db22cb3ac7`)
3. NIST FIPS 204 PDF — https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.204.pdf ; CSRC record https://csrc.nist.gov/pubs/fips/204/final
4. NIST FIPS 204 errata spreadsheet — https://csrc.nist.gov/files/pubs/fips/204/final/docs/fips-204-potential-updates.xlsx (SHA-256 `5bc93ce63bc647e6d1d456cb2d3a171426c15aca4a7a0e0edd40d08b7a34c793`)
5. Post-Quantum Cryptography KAT repository — https://github.com/post-quantum-cryptography/KAT
6. pq-crystals Kyber — https://github.com/pq-crystals/kyber
7. liboqs 0.16.0 — https://github.com/open-quantum-safe/liboqs/releases ; https://openquantumsafe.org/benchmarking
8. PQClean — https://github.com/PQClean/PQClean
9. RUSTSEC-2026-0585 — https://rustsec.org/advisories/RUSTSEC-2026-0585.html ; https://osv.dev/vulnerability/RUSTSEC-2026-0585
10. KyberSlash — https://kyberslash.cr.yp.to/libraries.html ; https://kyberslash.cr.yp.to/papers.html ; DOI https://doi.org/10.46586/tches.v2025.i2.209-234
11. NVD CVE-2026-10097 — https://nvd.nist.gov/vuln/detail/CVE-2026-10097
12. NVD CVE-2026-6330 — https://nvd.nist.gov/vuln/detail/CVE-2026-6330
13. OX Radar CVE-2026-10097 — https://www.ox.security/ox-radar/cve/CVE-2026-10097/
14. OX Radar CVE-2026-6330 — https://www.ox.security/ox-radar/cve/CVE-2026-6330/
15. wolfSSL security vulnerabilities — https://www.wolfssl.com/docs/security-vulnerabilities/
16. wolfSSL 5.9.2 release blog — https://www.wolfssl.com/forums/post8841.html
17. Das, ePrint 2026/1682 — https://eprint.iacr.org/2026/1682.pdf (PDF unread: HTTP 403 on 22 Nov 2026)
18. PostQuantum.com wolfSSL write-up (secondary) — https://postquantum.com/security-pqc/wolfssl-mlkem-key-recovery-fo-check/
19. PQShield `poly_frommsg` blog — https://pqshield.com/pqshield-plugs-timing-leaks-in-kyber-ml-kem-to-improve-pqc-implementation-maturity/
20. Zhou et al., TCHES 2025(4), pp. 817–847 — https://tches.iacr.org/index.php/TCHES/article/view/12430
21. Zhao et al., ePrint 2026/056 — https://eprint.iacr.org/2026/056.pdf
22. "One (Noisy) Bit to Rule Them All", J. Cryptology 2026, 39:28 — https://ir.cwi.nl/pub/36609/36609.pdf
23. "Single Trace is All It Takes", ePrint 2024/512 — http://eprint.iacr.asia/2024/512.pdf
24. "Finding a Polytope", PKC 2025 — https://link.springer.com/chapter/10.1007/978-3-031-91820-9_9
25. OpenSSL 3.5 Series Release Notes — https://openssl-library.org/news/openssl-3.5-notes/
26. Local checkout (ledger), HEAD `24c5487d9bfc99171380960e4eeb1543a724cfae` — `conanfile.py`, `CMakeLists.txt`, `external/` (inspected 22 Nov 2026)
