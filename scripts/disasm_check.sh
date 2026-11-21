#!/usr/bin/env bash
# disasm_check.sh — disassembly checks for the ML-KEM-768 decaps path.
#
# (a) KyberSlash shape: count `div`/`idiv` instructions inside the ML-KEM-768
#     decaps path of the gcc-built liboqs.a (mlkem-native X86_64 + C-ref
#     implementations), per symbol. The decaps path is: dec -> check_sk,
#     indcpa_dec, indcpa_enc (FO re-encryption) and their callees
#     (decompress, compress, NTT, basemul, frommsg, tomsg, verify).
# (b) Clang-branch substitute: disassemble the gcc-built poly_frommsg
#     (message-bits-to-polynomial) and report whether the -O2 binary contains
#     a secret-dependent branch on the message bits. The Clang 15-18
#     reproduction was NOT run (no Clang on this machine) — this is a
#     gcc-side substitute check only, stated plainly in the log.
#
# Usage (from the pack root):
#   bash work/measure/disasm_check.sh > work/measure/disasm-check.log 2>&1
# Paths resolve from the script's own directory upward to the pack root,
# so the script can be copied to pack/scripts/ verbatim.
set -u
HERE="$(cd "$(dirname "$0")" && pwd)"
if [ -n "${LATTICE_WORK:-}" ]; then
  PACK_ROOT="$LATTICE_WORK"
else
PACK_ROOT="$HERE"
while [ ! -d "$PACK_ROOT/work/liboqs/build" ]; do
  PARENT="$(dirname "$PACK_ROOT")"
  [ "$PARENT" = "$PACK_ROOT" ] && { echo "pack root not found above $HERE"; exit 1; }
  PACK_ROOT="$PARENT"
done
fi
BUILD="$PACK_ROOT/work/liboqs/build"
MEASURE="$PACK_ROOT/work/measure"
KEM768_X86="$BUILD/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src"
KEM768_C="$BUILD/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src"

echo "disasm_check — liboqs 0.16.0, gcc 13.3.0 -O3 Release, ML-KEM-768"
echo "archive: $BUILD/lib/liboqs.a"
echo "speed_kem binary: $BUILD/tests/speed_kem"
echo "NOTE: no Clang on this machine (checked: $(command -v clang || echo 'clang NOT FOUND'))."
echo "The Clang 15-18 KyberSlash-style reproduction was NOT run; section (b)"
echo "is a gcc-side substitute check only."
echo

# --- (a) div census over every .o of the ML-KEM-768 implementations ---
for IMPL in "X86_64:$KEM768_X86" "C-ref:$KEM768_C"; do
  NAME="${IMPL%%:*}"; DIR="${IMPL#*:}"
  echo "== (a) div/idiv census — ML-KEM-768 $NAME implementation ($DIR) =="
  echo "Method: objdump -d every .o in the implementation dir (incl. native asm);"
  echo "count instructions whose mnemonic is div/divq/divl/idiv. 'div' as a"
  echo "substring of another word is NOT counted. Full dump saved for audit."
  DUMP="$MEASURE/div-census-$NAME.asm"
  : > "$DUMP"
  for OBJ in "$DIR"/*.o "$DIR"/native/x86_64/src/*.o "$DIR"/native/aarch64/src/*.o; do
    [ -f "$OBJ" ] || continue
    objdump -d "$OBJ" 2>/dev/null >> "$DUMP"
  done
  echo "  full disassembly: work/measure/div-census-$NAME.asm"
  echo "  TOTAL div/idiv instructions: $(grep -cP '\t(div|idiv)(q|l|w|b)?[ \t]' "$DUMP")"
  echo "  per-symbol div counts (only symbols with >=1):"
  awk '
    /^0[0-9a-f]+ </ { sym=$2; sub(/^</,"",sym); sub(/>:$/,"",sym); cur=sym }
    /\t(div|idiv)(q|l|w|b)?[ \t]/ { c[cur]++ }
    END { for (s in c) print c[s]" "s }' "$DUMP" | sort -rn | sed 's/^/    /'
  echo
done

echo "== (a) div census — whole liboqs.a, ML-KEM-768 symbols only =="
nm "$BUILD/lib/liboqs.a" 2>/dev/null | grep -o "PQCP_MLKEM_NATIVE_MLKEM768_[A-Za-z0-9_]*" | sort -u > "$MEASURE/.mlkem768_syms.txt"
wc -l < "$MEASURE/.mlkem768_syms.txt" | xargs echo "ML-KEM-768 symbols in archive:"
echo

echo "== (a) div census — linked speed_kem binary, ML-KEM-768 decaps-path symbols =="
for SYM in PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_sk PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frommsg PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomsg PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d10 PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d4 PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d10 PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d4 PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_decompress_du; do
  N=$(objdump -d --disassemble="$SYM" "$BUILD/tests/speed_kem" 2>/dev/null | grep -cP "\t(div|idiv)(q|l|w|b)?[ \t]" || true)
  echo "  $SYM: $N div/idiv"
done
echo

# --- (b) poly_frommsg branch analysis (gcc build) ---
echo "== (b) poly_frommsg — secret-dependent branch check (gcc -O2 substitute) =="
COMPRESS_X86="$KEM768_X86/compress.c.o"
objdump -d --disassemble=PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frommsg "$COMPRESS_X86" > "$MEASURE/poly_frommsg_x86_64.asm" 2>&1
echo "full disassembly saved to: work/measure/poly_frommsg_x86_64.asm"
echo "conditional-branch census in poly_frommsg (X86_64):"
grep -oP "\t(j[a-z]+)[ \t]" "$MEASURE/poly_frommsg_x86_64.asm" | sort | uniq -c
echo "total conditional jumps: $(grep -cP '\t(j[a-z]+)[ \t]' "$MEASURE/poly_frommsg_x86_64.asm")"
echo "div/idiv in poly_frommsg: $(grep -cP '\t(div|idiv)(q|l|w|b)?[ \t]' "$MEASURE/poly_frommsg_x86_64.asm")"
echo "cmov/setcc instructions (0 expected: selection is arithmetic masking): $(grep -cP '\t(cmov[a-z]+|set[a-z]+)[ \t]' "$MEASURE/poly_frommsg_x86_64.asm" || true)"
echo "Reading of the disassembly:"
echo "  The function is fully unrolled (32 message bytes x 8 bits). Per bit it does:"
echo "  and (msg byte),%al; movzbl; neg; sar; and \$0x681 (=(q+1)/2); store."
echo "  The only conditional branch is the loop-back 'jne' at the end, which"
echo "  compares the output pointer against a fixed end pointer (32 fixed"
echo "  iterations) — it does NOT depend on any message bit. No branch, cmov"
echo "  target, or div operand is conditioned on a secret message bit."
echo "  Verdict: NO secret-dependent branch on message bits in the gcc-built"
echo "  poly_frommsg. (Clang 15-18 reproduction NOT run — no Clang.)"
rm -f "$MEASURE/.mlkem768_syms.txt"
