# liboqs speed_kem / speed_sig cross-check (3 s runs)

The maintained tool's own 3 s means for ML-KEM-768 and ML-DSA-65, recorded for comparison with the independent re-timing in benchmark_latency.md. Sources: data/speed_kem_MLKEM768.log, data/speed_sig_MLDSA65.log.

| Algorithm | Operation | liboqs speed_* mean (us) |
|---|---|---|
| ML-DSA-65 | keypair | 3.004 |
| ML-DSA-65 | sign | 3.000 |
| ML-DSA-65 | verify | 3.000 |
| ML-KEM-768 | decaps | 3.000 |
| ML-KEM-768 | encaps | 3.000 |
| ML-KEM-768 | keygen | 3.000 |
