# Fresh-clone reproduction

## What was reproduced

A fresh copy of the pack directory (no build artefacts, no work
directory) was verified and run on 2026-11-21/22, on the same machine
(4 vCPU AMD EPYC 9D25, gcc 13.3.0, cmake 3.28.3). Full unedited record:
`repro/fresh-clone-run.log`.

## Results

| Step | Result |
|------|--------|
| `sha256sum -c SHA256SUMS` before any run | 75/75 OK, exit 0 |
| Offline run (`LATTICE_OFFLINE=1 bash scripts/run_all.sh`) | PASS — GENERATE VERDICT: PASS, 0 failing checks |
| `sha256sum -c SHA256SUMS` after offline regen | all 75 still OK — `generate_tables.log` is byte-identical after regeneration |
| Live run (`bash scripts/run_all.sh`) | PASS — build PASS, smoke PASS, CONSISTENCY VERDICT: PASS (10/10 checks; worst retime-median deviation 20.4%, within the 25% tolerance; timing diff −0.066 us vs 0.740 us threshold) |
| Tables after live run (`cmp` vs the pack, 18 files) | 18/18 byte-identical |

## How to reproduce

```sh
# 1. checksums first (before any run)
sha256sum -c SHA256SUMS
# 2. offline: regenerate tables only (no network, no toolchain)
LATTICE_OFFLINE=1 bash scripts/run_all.sh
# 3. live: build the pinned engine + re-run every measurement + compare
bash scripts/run_all.sh
```

The live run clones liboqs 0.16.0, PQClean, and the KAT repository
(network required), builds the scoped minimal build (~1 minute), runs
the full measurement suite, and compares the fresh run against the
committed `data/` (deterministic counts exact, timing medians within
25%). The scratch directory is created next to the pack (home disk —
`/tmp` is a 512 MB tmpfs on the reference machine and does not fit the
build) and removed on success.

## What is NOT byte-identical (by design)

- `outputs/build.log` — records the scratch directory path, which is
  unique per run, and the build output. It is a run artefact, not a
  table. SHA256SUMS is verified *before* any run for this reason (see
  `.github/workflows/verify.yml`: checksums first, then the runs).
- Fresh measurement logs (timing medians, timing means) — they vary
  run to run on a shared VM (worst observed median deviation 20.4%).
  They are compared by verdict and tolerance
  (`scripts/check_consistency.py`), not by hash. The committed
  `data/*.log` files are the canonical run's unedited logs.

## CI

The CI workflow (`.github/workflows/verify.yml`) does the same on every
push: checksums first, offline table regeneration (with a byte-identical
check), the live run, and uploads `outputs/build.log` +
`outputs/generate_tables.log` as artifact `run-logs`. CI output lines
should be appended to `docs/EXCERPTS.md` §10 after the first CI run on
the published repository.
