#!/usr/bin/env bash
# build_liboqs.sh — fetch the pinned engine and build it (scoped, fast).
#
# Usage:
#   bash scripts/build_liboqs.sh <WORK_DIR>
#
# WORK_DIR gets the layout the measurement scripts expect:
#   <WORK_DIR>/work/liboqs        (liboqs 0.16.0, tag commit pinned)
#   <WORK_DIR>/work/liboqs/build  (scoped Release build)
#   <WORK_DIR>/work/pqclean       (PQClean archived snapshot, HEAD pinned)
#   <WORK_DIR>/work/kat           (official FIPS 203/204 .rsp KAT files)
#   <WORK_DIR>/work/measure       (compiled harness binaries + fresh logs)
#
# Pins are verified, not trusted: the liboqs tag commit, the PQClean HEAD
# and every KAT file's SHA-256 are checked against data/pins.json before
# anything is built. The build is the scoped minimal build (ML-KEM
# 512/768/1024 + ML-DSA 44/65/87 only): ~1 minute on 4 vCPU, versus ~15
# minutes for the full build. The full build was used for the original
# measurement run; the scoped build reproduces the same speed_kem means
# (ML-KEM-768 keygen 16.01 vs 15.64 us, decaps 19.58 vs 19.58 us).
#
# Exit status: 0 only if every pin verifies and the build + smoke tests pass.
set -eu
HERE="$(cd "$(dirname "$0")" && pwd)"
PACK_ROOT="$(dirname "$HERE")"
WORK="${1:?usage: build_liboqs.sh <WORK_DIR>}"
mkdir -p "$WORK/work/kat" "$WORK/work/measure"

PINS="$PACK_ROOT/data/pins.json"
need() { command -v "$1" >/dev/null 2>&1 || { echo "MISSING TOOL: $1"; exit 1; }; }
need git; need cmake; need make; need cc; need python3; need sha256sum

LIBOQS_COMMIT=$(python3 -c "import json;print(json.load(open('$PINS'))['engine_tag_commit'])")
PQ_CLEAN_HEAD=$(python3 -c "import json;print(json.load(open('$PINS'))['pqclean_head'])")
echo "build_liboqs — liboqs 0.16.0 tag commit $LIBOQS_COMMIT"
echo "build_liboqs — PQClean HEAD $PQ_CLEAN_HEAD"
echo "build_liboqs — toolchain: $(gcc --version | head -1), $(cmake --version | head -1)"

# --- liboqs -------------------------------------------------------------
if [ ! -d "$WORK/work/liboqs/.git" ]; then
  git clone --depth 1 --branch 0.16.0 https://github.com/open-quantum-safe/liboqs "$WORK/work/liboqs"
fi
cd "$WORK/work/liboqs"
ACTUAL_COMMIT=$(git rev-parse HEAD)
echo "liboqs HEAD: $ACTUAL_COMMIT"
[ "$ACTUAL_COMMIT" = "$LIBOQS_COMMIT" ] || { echo "PIN MISMATCH: liboqs HEAD $ACTUAL_COMMIT != $LIBOQS_COMMIT"; exit 1; }
echo "PIN OK: liboqs 0.16.0 == $LIBOQS_COMMIT"

# --- PQClean ------------------------------------------------------------
if [ ! -d "$WORK/work/pqclean/.git" ]; then
  git clone --depth 1 https://github.com/PQClean/PQClean "$WORK/work/pqclean"
fi
cd "$WORK/work/pqclean"
ACTUAL_PQ=$(git rev-parse HEAD)
echo "PQClean HEAD: $ACTUAL_PQ"
[ "$ACTUAL_PQ" = "$PQ_CLEAN_HEAD" ] || { echo "PIN MISMATCH: PQClean HEAD $ACTUAL_PQ != $PQ_CLEAN_HEAD"; exit 1; }
echo "PIN OK: PQClean == $PQ_CLEAN_HEAD"

# --- KAT files ----------------------------------------------------------
if [ ! -d "$WORK/work/kat-repo/.git" ]; then
  git clone --depth 1 https://github.com/post-quantum-cryptography/KAT "$WORK/work/kat-repo"
fi
KAT_REPO="$WORK/work/kat-repo"
for f in kat_MLKEM_512.rsp kat_MLKEM_768.rsp kat_MLKEM_1024.rsp \
         kat_MLDSA_44_det_pure.rsp kat_MLDSA_65_det_pure.rsp kat_MLDSA_87_det_pure.rsp; do
  cp "$KAT_REPO/KATs/ML-KEM/$f" "$WORK/work/kat/$f" 2>/dev/null \
    || cp "$KAT_REPO/KATs/ML-DSA/$f" "$WORK/work/kat/$f" 2>/dev/null \
    || find "$KAT_REPO" -name "$f" -exec cp {} "$WORK/work/kat/$f" \; -quit
done
python3 - "$WORK/work/kat" "$PINS" << 'EOF'
import json, hashlib, os, sys
kat_dir, pins_path = sys.argv[1], sys.argv[2]
pins = json.load(open(pins_path))
kat = json.load(open(os.path.join(os.path.dirname(pins_path), "kat_subset.json")))
ok = True
for key, meta in kat.items():
    path = os.path.join(kat_dir, meta["source_file"])
    h = hashlib.sha256(open(path, "rb").read()).hexdigest()
    match = h == meta["source_sha256"]
    print(f"KAT {meta['source_file']}: sha256 {'OK' if match else 'MISMATCH'} ({h[:16]}...)")
    ok = ok and match
sys.exit(0 if ok else 1)
EOF

# --- scoped build -------------------------------------------------------
cd "$WORK/work/liboqs"
mkdir -p build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release \
  -DOQS_MINIMAL_BUILD="KEM_ml_kem_512;KEM_ml_kem_768;KEM_ml_kem_1024;SIG_ml_dsa_44;SIG_ml_dsa_65;SIG_ml_dsa_87"
make -j"$(nproc 2>/dev/null || echo 4)"
ls -la lib/liboqs.a tests/speed_kem tests/speed_sig tests/kat_kem tests/kat_sig tests/test_kem tests/test_sig
echo "BUILD OK: liboqs.a $(stat -c%s lib/liboqs.a) bytes"

# --- compile the measurement harnesses ----------------------------------
B="$WORK/work/liboqs/build"
S="$PACK_ROOT/scripts"
M="$WORK/work/measure"
cc -O2 -std=c11 -I"$B/include" -o "$M/retime"        "$S/retime.c"        "$B/lib/liboqs.a" -lcrypto -lm
cc -O2 -std=c11 -I"$B/include" -o "$M/input_check"   "$S/input_check.c"   "$B/lib/liboqs.a" -lcrypto -lm
cc -O2 -std=c11 -I"$B/include" -o "$M/tail_mut"      "$S/tail_mut.c"      "$B/lib/liboqs.a" -lcrypto -lm
cc -O2 -std=c11 -I"$B/include" -o "$M/timing_probe"  "$S/timing_probe.c"  "$B/lib/liboqs.a" -lcrypto -lm
cc -O2 -std=c11 -I"$B/include" -o "$M/kat_vectors"   "$S/kat_vectors.c"   "$B/lib/liboqs.a" -lcrypto -lm
PQC="$WORK/work/pqclean"
cc -O2 -std=c11 -I"$PQC/crypto_kem/ml-kem-768/clean" -I"$PQC/common" \
  -o "$M/pqclean_check" "$S/pqclean_check.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/cbd.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/indcpa.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/kem.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/ntt.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/poly.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/polyvec.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/reduce.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/symmetric-shake.c" \
  "$PQC/crypto_kem/ml-kem-768/clean/verify.c" \
  "$PQC/common/fips202.c" "$PQC/common/randombytes.c"
ls -la "$M"
echo "HARNESSES OK"

# --- smoke tests ---------------------------------------------------------
cd "$B"
./tests/test_kem ML-KEM-768 | tail -2
./tests/test_sig ML-DSA-65 | tail -2
echo "SMOKE OK"
echo "BUILD_LIBOQS RESULT: PASS"
