#!/usr/bin/env bash
# run_all.sh — the one-command runner for this evidence pack.
#
# Usage (from the pack root):
#   bash scripts/run_all.sh            # live: build + measure + consistency + tables
#   LATTICE_OFFLINE=1 bash scripts/run_all.sh   # offline: regenerate tables only
#
# Live mode:
#   1. builds the pinned engine (scripts/build_liboqs.sh) into a scratch
#      directory (LATTICE_WORK, default mktemp -d) and logs it to
#      outputs/build.log;
#   2. runs the full measurement suite there, writing fresh logs to the
#      scratch work/measure directory;
#   3. compares the fresh run against the committed data/ with
#      scripts/check_consistency.py (deterministic counts exact, timing
#      medians within 25%);
#   4. regenerates every output table from the committed data/ with
#      scripts/generate_tables.py (byte-identical by construction).
#
# Offline mode skips steps 1-3 (no network, no toolchain needed) and only
# regenerates the tables, so anyone can re-derive the outputs from the
# committed raw logs without rebuilding anything.
#
# Exit status: 0 only if every step passes.
#
# NOTE on checksums: SHA256SUMS is verified BEFORE this script runs (see
# .github/workflows/verify.yml and docs/fresh-clone-repro.md). This script
# regenerates outputs/*.log (build log, generate_tables.log), which are
# run artefacts, so their hashes change after a live run; the generated
# tables (*.csv, *.md) are byte-identical across runs because they are a
# pure function of the committed data/.
set -eu
HERE="$(cd "$(dirname "$0")" && pwd)"
PACK_ROOT="$(dirname "$HERE")"
cd "$PACK_ROOT"
mkdir -p outputs

if [ -n "${LATTICE_OFFLINE:-}" ]; then
  echo "RUN_ALL MODE: offline (tables only, no build, no measurement)"
  python3 scripts/generate_tables.py > outputs/generate_tables.log 2>&1
  cat outputs/generate_tables.log
  echo "RUN_ALL RESULT: PASS (offline)"
  exit 0
fi

if [ -n "${LATTICE_WORK:-}" ]; then
  WORK="$LATTICE_WORK"
  CREATED_SCRATCH=0
else
  WORK="$(mktemp -d "$(dirname "$PACK_ROOT")/scratch.XXXXXX")"
  CREATED_SCRATCH=1
fi
export LATTICE_WORK="$WORK"
# The scratch directory lives next to the pack (home disk), not in /tmp
# (a 512 MB tmpfs on this machine — a full build + clones do not fit).
# It is removed on a successful run; on failure it is kept for debugging.

echo "RUN_ALL MODE: live"
echo "scratch work dir: $WORK"
echo "pack root: $PACK_ROOT"

# 1. build
bash scripts/build_liboqs.sh "$WORK" > outputs/build.log 2>&1
tail -3 outputs/build.log

# 2. measurements (run from the scratch dir so relative paths resolve there)
cd "$WORK"
B="$WORK/work/liboqs/build"
M="$WORK/work/measure"
S="$PACK_ROOT/scripts"
echo "--- smoke ---"
"$B/tests/test_kem" ML-KEM-768 > "$M/test_kem_MLKEM768.log" 2>&1
"$B/tests/test_sig" ML-DSA-65 > "$M/test_sig_MLDSA65.log" 2>&1
"$B/tests/speed_kem" ML-KEM-768 --duration 3 > "$M/speed_kem_MLKEM768.log" 2>&1
"$B/tests/speed_sig" ML-DSA-65 --duration 3 > "$M/speed_sig_MLDSA65.log" 2>&1
echo "smoke: test_kem + test_sig + speed_kem + speed_sig exit 0"
echo "--- re-timing ---"
taskset -c 0 "$M/retime" > "$M/retime.log" 2>&1
taskset -c 0 "$M/retime" > "$M/retime-repeat.log" 2>&1
echo "--- KAT ---"
python3 "$S/kat_check.py" > "$M/kat-check.log" 2>&1
python3 "$S/kat_derand_check.py" > "$M/kat-derand-check.log" 2>&1
echo "--- input checks ---"
"$M/input_check" > "$M/input-check.log" 2>&1
"$M/pqclean_check" > "$M/pqclean-check.log" 2>&1
echo "--- tail mutation ---"
python3 "$S/tail_mutation.py" > "$M/tail-mutation.log" 2>&1
echo "--- timing probes + disassembly ---"
taskset -c 0 "$M/timing_probe" > "$M/timing-probe.log" 2>&1
bash "$S/disasm_check.sh" > "$M/disasm-check.log" 2>&1
echo "--- memory ---"
python3 "$S/mem_profile.py" speed_kem > "$M/mem-profile.log" 2>&1
python3 "$S/mem_profile.py" speed_sig > "$M/mem-profile-sig-only.log" 2>&1
echo "measurements done; fresh logs in $M"

# 3. consistency vs committed data/
cd "$PACK_ROOT"
python3 scripts/check_consistency.py "$M" "$PACK_ROOT/data"

# 4. regenerate tables from committed data/
python3 scripts/generate_tables.py > outputs/generate_tables.log 2>&1
cat outputs/generate_tables.log

echo "RUN_ALL RESULT: PASS (live)"
if [ "$CREATED_SCRATCH" = 1 ]; then
  rm -rf "$WORK"
  echo "scratch dir removed: $WORK"
fi
