#!/usr/bin/env python3
"""kat_derand_check.py — FIPS KAT verification via the derand API.

For each of the first 5 vectors of work/kat/kat_MLKEM_768.rsp, feeds the
vector's own d||z (64 bytes) as the keypair seed and msg (32 bytes) as the
encaps seed into liboqs via kat_vectors.c, and compares the resulting
pk/sk/ct/ss byte-exact against the .rsp. This is the correct comparison
against the FIPS 203 deterministic KATs: kat_kem's own DRBG procedure
differs from the one that generated these .rsp files (see kat-check.log),
so this check isolates implementation correctness from KAT-procedure drift.

Usage (from the pack root):
    python3 work/measure/kat_derand_check.py > work/measure/kat-derand-check.log
"""
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))


def resolve_pack_root():
    w = os.environ.get("LATTICE_WORK")
    if w:
        return w

    d = HERE
    while True:
        if os.path.isdir(os.path.join(d, "work", "kat")):
            return d
        parent = os.path.dirname(d)
        if parent == d:
            raise FileNotFoundError("pack root (containing work/kat) not found above " + HERE)
        d = parent


PACK_ROOT = resolve_pack_root()
BUILD_DIR = os.path.join(PACK_ROOT, "work", "liboqs", "build")
KAT = os.path.join(PACK_ROOT, "work", "kat", "kat_MLKEM_768.rsp")
HELPER_SRC = os.path.join(HERE, "kat_vectors.c")
HELPER_BIN = os.path.join(os.environ.get("LATTICE_WORK", HERE), "work", "measure", "kat_vectors") if os.environ.get("LATTICE_WORK") else os.path.join(HERE, "kat_vectors")
NVEC = 5


def parse_rsp(path):
    vectors, cur = [], None
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            m = re.match(r"count\s*=\s*(\d+)", line)
            if m:
                cur = {"count": int(m.group(1))}
                vectors.append(cur)
                continue
            m = re.match(r"([A-Za-z_]+)\s*=\s*([0-9a-fA-F]+)", line)
            if m and cur is not None:
                cur[m.group(1).lower()] = m.group(2).lower()
    return vectors


def build_helper():
    if os.path.exists(HELPER_BIN):
        return
    cmd = ["cc", "-O2", "-std=c11", "-I" + os.path.join(BUILD_DIR, "include"),
           "-o", HELPER_BIN, HELPER_SRC,
           os.path.join(BUILD_DIR, "lib", "liboqs.a"), "-lcrypto", "-lm"]
    print("building helper: " + " ".join(cmd), file=sys.stderr)
    subprocess.run(cmd, check=True)


def main():
    build_helper()
    print("KAT derand check — ML-KEM-768 — liboqs vs official kat_MLKEM_768.rsp")
    print("method: keypair seed = d||z, encaps seed = msg, via OQS_KEM_*_derand")
    rsp = parse_rsp(KAT)
    print(f"vectors in .rsp: {len(rsp)}; checked: first {NVEC}")
    npass = nfail = 0
    for i in range(min(NVEC, len(rsp))):
        v = rsp[i]
        proc = subprocess.run(
            [HELPER_BIN, "ML-KEM-768", v["d"] + v["z"], v["msg"]],
            capture_output=True, text=True)
        if proc.returncode != 0:
            print(f"vector {i}: HELPER ERROR rc={proc.returncode}: {proc.stderr.strip()}")
            nfail += 4
            continue
        got = {}
        for line in proc.stdout.splitlines():
            m = re.match(r"(\w+) = ([0-9a-f]+)", line.strip())
            if m:
                got[m.group(1)] = m.group(2)
            m2 = re.match(r"decaps_ss_match = (\w+)", line.strip())
            if m2:
                got["decaps_ss_match"] = m2.group(1)
        results = []
        for fld in ["pk", "sk", "ct", "ss"]:
            if got.get(fld) == v.get(fld):
                results.append(f"{fld}=PASS")
                npass += 1
            else:
                results.append(f"{fld}=FAIL")
                nfail += 1
        print(f"vector {i}: " + ", ".join(results) +
              f" (decaps_ss_match={got.get('decaps_ss_match')})")
    print(f"SUMMARY ML-KEM-768 derand-vs-rsp: {npass} field-PASS, {nfail} field-FAIL over first {NVEC} vectors")


if __name__ == "__main__":
    main()
