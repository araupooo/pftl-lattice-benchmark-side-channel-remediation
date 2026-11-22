# FIPS 203 input-check battery (RUSTSEC-2026-0585)

Non-reduced encapsulation keys: 4 coefficients per key raised by q=3329 (coefficients <= 766, so value+q stays < 4096 and re-encodes in 12 bits), 20 mutated keys per set. liboqs 0.16.0 (mlkem-native) rejects all of them — FIPS 203 §7.2 modulus check enforced; the RUSTSEC-2026-0585 gap does NOT reproduce. Tampered decapsulation keys (one byte flipped in the stored H(ek) region and separately in the embedded ek region) make decaps return an explicit ERROR in all 6 cases — FIPS 203 §7.3 hash check, not implicit rejection. The PQClean snapshot (archived, ML-KEM-768/clean) accepts 20/20 — the vulnerable baseline shape. Sources: data/input-check.log, data/pqclean-check.log.

| Engine and set | Test | Trials | Accepted | Rejected / error | Verdict |
|---|---|---|---|---|---|
| ML-KEM-512 | non-reduced encapsulation key (§7.2) | 20 | 0 | 20 | REJECT — check enforced |
| ML-KEM-768 | non-reduced encapsulation key (§7.2) | 20 | 0 | 20 | REJECT — check enforced |
| ML-KEM-1024 | non-reduced encapsulation key (§7.2) | 20 | 0 | 20 | REJECT — check enforced |
| ML-KEM-768 (PQClean/clean) | non-reduced encapsulation key (§7.2) | 20 | 20 | 0 | ACCEPTED — no check (vulnerable baseline) |
| ML-KEM-512/768/1024 | tampered decapsulation key (§7.3: H(ek) + embedded ek) | 6 | 0 | 6 | REJECT(error) — explicit error, all 6 cases |
