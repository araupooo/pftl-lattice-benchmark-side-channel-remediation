# Lattice Benchmark and Side-Channel Remediation Pack

A public, reproducible security evidence pack for one pinned lattice
engine — **liboqs 0.16.0** (ML-KEM via mlkem-native v1.2.0, ML-DSA via
mldsa-native) — proposed for a post-quantum ledger. It combines measured
benchmarks, a source-linked side-channel review, focused tests, and
prioritized remediation guidance. Measured results, source-review
observations, confirmed findings, and unverified hypotheses are kept
separate; no vulnerability is claimed where tests are negative.

## One command

```sh
bash scripts/run_all.sh            # live: build + measure + consistency + tables
LATTICE_OFFLINE=1 bash scripts/run_all.sh   # offline: regenerate tables only
```

Live mode clones the pinned engine into a scratch directory, builds the
scoped minimal build (~1 minute), runs the full measurement suite, and
compares the fresh run against the committed data (deterministic counts
exact, timing medians within 25%). Offline mode needs no network or
toolchain and regenerates every output table from the committed raw
logs. See docs/fresh-clone-repro.md.

## What is in here

| Path | Contents |
|------|----------|
| `scripts/` | Benchmark harness + test scripts + `run_all.sh` (one command) + `build_liboqs.sh` + `generate_tables.py` + `check_consistency.py` |
| `data/` | Pins (engine, KAT files, errata), KAT subset vectors, raw unedited measurement logs, disassembly audit files, findings list |
| `outputs/` | Generated tables (latency, sizes, KAT fidelity, input checks, tail mutation, timing probes, memory, findings) + `generate_tables.log` |
| `docs/benchmark.md` | Benchmark report (environment, method, principal measurements) |
| `docs/side-channel-review.md` | Source-linked side-channel review (26 findings) |
| `docs/remediation.md` | Severity-ranked remediation guidance |
| `docs/claim-evidence-index.md` | Claim–evidence index (C1–C36, E1–E3, NV1–NV15) |
| `docs/SOURCES.md` | Pinned primary sources with verification records |
| `docs/postfiatd-integration.md` | Ledger integration context (the engine is proposed, not used) |
| `docs/fresh-clone-repro.md` | Fresh-clone reproduction record |
| `docs/EXCERPTS.md` | Verbatim excerpts (claim table, not-verified section, key log lines) |
| `repro/fresh-clone-run.log` | Unedited fresh-clone run log |
| `SHA256SUMS` | SHA-256 of every pack file (regenerated last) |

## Headline results

- **ML-KEM-768 medians (N=1000, single core):** keygen 15.19 us,
  encaps 13.68 us, decaps 18.57 us. **ML-DSA-65:** keypair 47.25 us,
  sign 129.05 us, verify 48.08 us. Sizes match FIPS 203 Table 3 /
  FIPS 204 Table 2 exactly.
- **KAT:** direct kat_kem/kat_sig vs the official `.rsp` fails 0/45
  fields — a KAT *procedure* mismatch, not an implementation bug. Fed
  the `.rsp`'s own inputs through the derand API, liboqs reproduces
  pk/sk/ct/ss **20/20 PASS** (ML-KEM-768, first 5 vectors).
- **Input checks (RUSTSEC-2026-0585):** non-reduced encapsulation keys
  accepted **0/20 per set** — the vulnerability does NOT reproduce
  against liboqs 0.16.0. Tampered decapsulation keys return an explicit
  ERROR in all 6 cases (FIPS 203 §7.3). The PQClean snapshot control
  accepts **20/20** — the vulnerable baseline reproduced.
- **Tail mutation:** 0 accepted / 1088 implicitly rejected / 0 errors.
- **Timing:** valid vs random-invalid ct decaps differ by 0.061 us vs a
  0.397 us 3-sigma threshold — **no detectable difference**. 0
  `div`/`idiv` in the ML-KEM-768 decaps path.
- **Findings:** 26 total — **1 Medium** (F-D2: rejected-signature
  challenges are the power/EM surface), 7 Low, 5 Informational,
  13 Negative-result (patterns checked and absent).
- **Not verified:** 15 items (NV1–NV15), including the Clang 15–18
  reproduction (no Clang on this machine) and the Das paper figures
  (ePrint PDF returned HTTP 403).

## Note on raw logs

The raw logs in `data/` are the unedited outputs of the measurement
scripts, except for one publication redaction: absolute machine paths
(the local working directory, which contains a task identifier) were
replaced with the placeholder `<PACK-WORKDIR>` so the pack contains
no local working-directory identifiers. No measurement value, verdict,
or log line was altered. The same placeholder appears in
`outputs/build.log` and `repro/fresh-clone-run.log`.

## Verify it yourself

```sh
sha256sum -c SHA256SUMS            # checksums first (before any run)
bash scripts/run_all.sh            # live run; see outputs/generate_tables.log
```

The CI workflow (`.github/workflows/verify.yml`) does the same on every
push: checksums first, then the offline table regeneration, then the
live run, and uploads the run logs as artifact `run-logs`.
