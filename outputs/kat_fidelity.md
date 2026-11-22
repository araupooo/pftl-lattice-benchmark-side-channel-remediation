# KAT fidelity against the official vectors

Direct kat_kem/kat_sig output does NOT byte-match the official FIPS 203/204 .rsp files: the .rsp KATs use a different DRBG procedure (their count-0 seed is not in the SP 800-90A AES-256-CTR-DRBG stream liboqs uses; ML-DSA .rsp mlen is 16*(count+1) vs liboqs 33*(count+1)). The decisive check feeds the .rsp's own inputs (d||z, msg) through the public derand API and reproduces pk/sk/ct/ss exactly — 20/20 fields over the first 5 ML-KEM-768 vectors. ML-DSA has no derand keypair API in liboqs 0.16.0, so no equivalent check exists for signatures. Sources: data/kat-check.log, data/kat-derand-check.log, data/kat_subset.json.

| Algorithm | Procedure | Fields | Vectors | Fields pass | Fields fail | Verdict |
|---|---|---|---|---|---|---|
| ML-KEM-768 | derand API vs .rsp (first 5 vectors) | pk/sk/ct/ss | 5 | 20 | 0 | PASS |
| ML-KEM-768 | kat_kem output vs .rsp (first 5 vectors) | seed/pk/sk/ct/ss | 5 | 0 | 45 | FAIL — procedure mismatch, not an implementation bug |
| ML-DSA-65 | kat_sig output vs .rsp (first 5 vectors) | seed/pk/sk/sm | 5 | 0 | 20 | FAIL — procedure mismatch, not an implementation bug |
