# Memory profile (peak RSS)

Peak resident set size via resource.getrusage(RUSAGE_CHILDREN) — the same quantity /usr/bin/time reports as 'Maximum resident set size' (/usr/bin/time is not installed on this machine). One process per binary so the cumulative max does not conflate the two. Sources: data/mem-profile.log, data/mem-profile-sig-only.log.

| Algorithm | Command | Peak RSS (KiB) | Peak RSS (MiB) |
|---|---|---|---|
| ML-KEM-768 | speed_kem --duration 3 | 11444 | 11.2 |
| ML-DSA-65 | speed_sig --duration 3 | 11608 | 11.3 |
