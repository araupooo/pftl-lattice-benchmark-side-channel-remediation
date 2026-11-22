# Key, ciphertext and signature sizes

Measured sizes from data/retime.log, asserted equal to FIPS 203 Table 3 (ML-KEM) and FIPS 204 Table 2 (ML-DSA). ML-DSA signature length was constant (min = max = nominal max) in all 1000 trials per set.

| Algorithm | Public key (B) | Secret key (B) | Ciphertext / signature (B) | Shared secret (B) |
|---|---|---|---|---|
| ML-KEM-512 | 800 | 1632 | 768 | 32 |
| ML-KEM-768 | 1184 | 2400 | 1088 | 32 |
| ML-KEM-1024 | 1568 | 3168 | 1568 | 32 |
| ML-DSA-44 | 1312 | 2560 | 2420 |  |
| ML-DSA-65 | 1952 | 4032 | 3309 |  |
| ML-DSA-87 | 2592 | 4896 | 4627 |  |
