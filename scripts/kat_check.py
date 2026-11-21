#!/usr/bin/env python3
"""kat_check.py — KAT fidelity checker for liboqs 0.16.0 vs official .rsp files.

Runs tests/kat_kem ML-KEM-768 --all and tests/kat_sig ML-DSA-65 --all, parses
the first 5 vectors of each, and compares byte-exact against the official
response files work/kat/kat_MLKEM_768.rsp and work/kat/kat_MLDSA_65_det_pure.rsp.

Compared fields:
  ML-KEM: seed, pk, sk, ct, ss  (.rsp additionally carries z, d, msg, which
          liboqs kat_kem does not print — noted, not a mismatch).
  ML-DSA: seed, pk, sk, sm      (.rsp additionally carries xi and ctx, which
          liboqs kat_sig does not print; .rsp msg length is 16*(count+1)
          while liboqs kat_sig uses 33*(count+1) — a KNOWN format difference
          documented in the log, which makes msg/sm differ even if seed/pk/sk
          match).

Usage (from the pack root):
    python3 work/measure/kat_check.py > work/measure/kat-check.log
Paths are resolved relative to this script's directory so the script can be
copied to pack/scripts/ verbatim (pack root = parent of scripts/).
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

    """Pack root = the ancestor directory containing work/kat and
    work/liboqs/build. Works both from work/measure/ (this run) and from
    pack/scripts/ (where the script will be copied verbatim later)."""
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
KAT_DIR = os.path.join(PACK_ROOT, "work", "kat")
NVEC = 5


def parse_rsp(path):
    """Parse an .rsp file into a list of dicts, one per 'count = N' block."""
    vectors = []
    cur = None
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


def run_kat(binary, alg):
    cmd = [os.path.join(BUILD_DIR, "tests", binary), alg, "--all"]
    print(f"running: {' '.join(cmd)}", file=sys.stderr)
    proc = subprocess.run(cmd, capture_output=True, text=True)
    if proc.returncode != 0:
        print(f"ERROR: {binary} exited {proc.returncode}\n{proc.stderr}")
        sys.exit(1)
    if proc.stderr.strip():
        print(f"{binary} stderr: {proc.stderr.strip()}")
    return parse_rsp_text(proc.stdout)


def parse_rsp_text(text):
    vectors = []
    cur = None
    for line in text.splitlines():
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


def compare(name, rsp_path, binary, alg, fields):
    print(f"== {name} ==")
    print(f"official file: {rsp_path}")
    print(f"liboqs binary: tests/{binary} {alg} --all")
    rsp = parse_rsp(rsp_path)
    got = run_kat(binary, alg)
    print(f"vectors in .rsp: {len(rsp)}; vectors from liboqs: {len(got)}")
    print(f"fields compared: {', '.join(fields)}")
    print("known format differences (documented, not counted as failures):")
    if "kem" in binary:
        print("  - .rsp carries extra fields z, d, msg that liboqs kat_kem does not print.")
    else:
        print("  - .rsp carries extra fields xi, ctx that liboqs kat_sig does not print.")
        print("  - .rsp mlen = 16*(count+1); liboqs kat_sig mlen = 33*(count+1).")
        print("    => msg differs in length and content, so sm is expected to differ")
        print("       even when seed/pk/sk match. seed/pk/sk are the meaningful comparison.")
    npass = nfail = 0
    for i in range(min(NVEC, len(rsp), len(got))):
        r, g = rsp[i], got[i]
        results = []
        for fld in fields:
            rv, gv = r.get(fld), g.get(fld)
            if rv is None:
                results.append(f"{fld}=MISSING-IN-RSP")
            elif gv is None:
                results.append(f"{fld}=MISSING-IN-LIBOQS")
                nfail += 1
            elif rv == gv:
                results.append(f"{fld}=PASS")
                npass += 1
            else:
                results.append(f"{fld}=FAIL(len rsp={len(rv)} liboqs={len(gv)})")
                nfail += 1
        print(f"vector {i}: " + ", ".join(results))
        if r.get("seed") != g.get("seed"):
            print(f"  note: seed differs — downstream fields derive from the seed, so")
            print(f"        pk/sk/ct/ss (or sm) mismatches on this vector follow from it.")
    print(f"SUMMARY {name}: {npass} field-PASS, {nfail} field-FAIL over first {NVEC} vectors")
    print()
    return npass, nfail


def main():
    print("KAT fidelity check — liboqs 0.16.0 vs official .rsp files")
    print(f"pack root: {PACK_ROOT}")
    total_pass = total_fail = 0
    p, f = compare(
        "ML-KEM-768",
        os.path.join(KAT_DIR, "kat_MLKEM_768.rsp"),
        "kat_kem", "ML-KEM-768",
        ["seed", "pk", "sk", "ct", "ss"],
    )
    total_pass += p; total_fail += f
    p, f = compare(
        "ML-DSA-65",
        os.path.join(KAT_DIR, "kat_MLDSA_65_det_pure.rsp"),
        "kat_sig", "ML-DSA-65",
        ["seed", "pk", "sk", "sm"],
    )
    total_pass += p; total_fail += f
    print(f"OVERALL: {total_pass} field-PASS, {total_fail} field-FAIL (first {NVEC} vectors each)")
    print()
    print("INTERPRETATION (read before citing this log):")
    print("  A seed mismatch at count 0 means the two KAT procedures differ, not")
    print("  necessarily that the implementation is wrong. liboqs kat_kem/kat_sig")
    print("  use the PQC-submission-era NIST AES-256-CTR-DRBG (entropy 0..47);")
    print("  the .rsp files here are the FIPS 203/204 deterministic KATs, generated")
    print("  by a different procedure. This was verified independently: a fresh")
    print("  Python re-implementation of SP 800-90A CTR-DRBG (AES via openssl)")
    print("  reproduces liboqs's count-0 seed 06155023... byte-exact, while the")
    print("  .rsp count-0 seed 23f1c88b... is not in that DRBG stream.")
    print("  The decisive implementation check is kat-derand-check.log: fed the")
    print("  .rsp's own d||z/msg inputs through the derand API, liboqs reproduces")
    print("  the .rsp pk/sk/ct/ss. If that log shows PASS, the implementation")
    print("  matches the official FIPS vectors and only the KAT *procedure* differs.")


if __name__ == "__main__":
    main()
