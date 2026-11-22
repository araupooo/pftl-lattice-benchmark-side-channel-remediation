# Timing probes and disassembly census

KyberSlash shape, honest version: a chosen-ciphertext oracle crafting division-specific inputs is not available through the public API, so the probe compares decapsulation timing over 1000 valid vs 1000 random-invalid ciphertexts. ML-DSA signing time is reported as a distribution because the abort-loop iteration count is not exposed by the public API. The Clang 15–18 reproduction was NOT run (no Clang on this machine); the poly_frommsg check is a gcc-side substitute, stated plainly. Sources: data/timing-probe.log, data/timing-valid.csv, data/timing-invalid.csv, data/timing-sign.csv, data/disasm-check.log.

| Probe | Method | Measurement | Threshold | Verdict |
|---|---|---|---|---|
| ML-KEM-768 decaps | valid vs random-invalid ciphertext (1000+1000) | 0.061 | 0.397 | NO detectable difference |
| ML-KEM-768 decaps path | div/idiv census over X86_64 + C-ref + linked binary (12 symbols) | 0 | — | 0 div/idiv — no division for a KyberSlash-style attack to exploit |
| ML-DSA-65 sign | 1000x fixed message/keypair (abort-loop distribution) | median 126.08 us, p99 575.05 us | 10.184 us (3-sigma on mean) | distribution consistent with abort loop; iteration count not API-observable |
| ML-KEM poly_frommsg | gcc -O2 disassembly (Clang substitute; Clang NOT run) | 1 conditional jump (fixed-trip loop back-edge) | — | NO secret-dependent branch on message bits |
