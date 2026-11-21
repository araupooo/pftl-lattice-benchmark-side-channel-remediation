#!/usr/bin/env python3
"""tail_mutation.py — tail-mutation sweep driver (FO comparison).

Mutates each byte position of a valid ML-KEM-768 ciphertext once (XOR 0x01),
decapsulates, and counts accepted (shared secret equals the original) vs
implicitly rejected. The mutation/decaps loop lives in the C helper
tail_mut.c (ctypes is NOT used); this script only builds the helper if the
binary is missing, runs it, and tallies the per-position verdicts.

Usage (from the pack root):
    python3 work/measure/tail_mutation.py > work/measure/tail-mutation.log
Paths are resolved relative to this script's directory so the script can be
copied to pack/scripts/ verbatim (pack root = parent of scripts/).
"""
import os
import subprocess
import sys
from collections import Counter

HERE = os.path.dirname(os.path.abspath(__file__))


def resolve_pack_root():
    w = os.environ.get("LATTICE_WORK")
    if w:
        return w

    """Pack root = the ancestor directory containing work/liboqs/build.
    Works both from work/measure/ (this run) and from pack/scripts/
    (where the script will be copied verbatim later)."""
    d = HERE
    while True:
        if os.path.isdir(os.path.join(d, "work", "liboqs", "build")):
            return d
        parent = os.path.dirname(d)
        if parent == d:
            raise FileNotFoundError("pack root (containing work/liboqs/build) not found above " + HERE)
        d = parent


PACK_ROOT = resolve_pack_root()
BUILD_DIR = os.path.join(PACK_ROOT, "work", "liboqs", "build")
HELPER_SRC = os.path.join(HERE, "tail_mut.c")
HELPER_BIN = os.path.join(os.environ.get("LATTICE_WORK", HERE), "work", "measure", "tail_mut") if os.environ.get("LATTICE_WORK") else os.path.join(HERE, "tail_mut")


def build_helper():
    if os.path.exists(HELPER_BIN):
        print(f"helper binary exists: {HELPER_BIN}", file=sys.stderr)
        return
    cmd = [
        "cc", "-O2", "-std=c11",
        "-I" + os.path.join(BUILD_DIR, "include"),
        "-o", HELPER_BIN, HELPER_SRC,
        os.path.join(BUILD_DIR, "lib", "liboqs.a"),
        "-lcrypto", "-lm",
    ]
    print("building helper: " + " ".join(cmd), file=sys.stderr)
    subprocess.run(cmd, check=True)


def main():
    build_helper()
    print("tail-mutation sweep — ML-KEM-768 — XOR 0x01 per byte position, one at a time")
    print(f"helper: {HELPER_BIN}")
    proc = subprocess.run([HELPER_BIN], capture_output=True, text=True, check=True)
    # Preserve the raw per-position verdicts for audit (one line per position).
    _pos_dir = os.path.join(os.environ.get("LATTICE_WORK", ""), "work", "measure") if os.environ.get("LATTICE_WORK") else HERE
    with open(os.path.join(_pos_dir, "tail-mutation-positions.txt"), "w") as f:
        f.write(proc.stdout)
    print("raw per-position verdicts saved to: tail-mutation-positions.txt")
    counts = Counter()
    accepted_positions = []
    error_positions = []
    summary = None
    for line in proc.stdout.splitlines():
        parts = line.split()
        if not parts:
            continue
        if parts[0] == "SUMMARY":
            summary = line
            continue
        pos, verdict = int(parts[0]), parts[1]
        counts[verdict] += 1
        if verdict == "ACCEPTED":
            accepted_positions.append(pos)
        elif verdict == "ERROR":
            error_positions.append(pos)
    total = sum(counts.values())
    print(f"positions swept: {total}")
    print(f"accepted (ss == original): {counts['ACCEPTED']}")
    print(f"implicitly rejected (ss != original, no error): {counts['IMPLICIT-REJECT']}")
    print(f"errors (decaps returned error): {counts['ERROR']}")
    print(f"accepted positions: {accepted_positions}")
    print(f"error positions: {error_positions}")
    print(f"helper summary line: {summary}")
    if proc.stderr:
        print("helper stderr:\n" + proc.stderr)


if __name__ == "__main__":
    main()
