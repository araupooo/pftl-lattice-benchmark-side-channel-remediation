# Tail-mutation sweep (FO ciphertext comparison)

Every byte position of a valid ML-KEM-768 ciphertext mutated once (XOR 0x01); decapsulation must implicitly reject all of them. 0 accepted / 1088 implicitly rejected / 0 errors — clean FO behaviour, consistent with the full-length constant-time compare in the source review. Source: data/tail-mutation.log, data/tail-mutation-positions.txt (one verdict line per position).

| Algorithm | Test | Positions | Accepted | Implicitly rejected | Errors |
|---|---|---|---|---|---|
| ML-KEM-768 | single-byte ciphertext mutation (XOR 0x01, one position at a time) | 1088 | 0 | 1088 | 0 |
