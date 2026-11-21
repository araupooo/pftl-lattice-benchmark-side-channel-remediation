#!/usr/bin/env python3
"""mem_profile.py — memory profile substitute for /usr/bin/time -v.

/usr/bin/time is NOT installed on this machine (GNU time missing), so this
script reproduces its "Maximum resident set size" measurement with
resource.getrusage(RUSAGE_CHILDREN) after running the child: ru_maxrss is
the same quantity (peak RSS of the largest waited-for child, in KiB on
Linux). It runs each command once and prints the child's exit code, wall
time, user/system time and peak RSS in KiB and MiB.

Usage (from the pack root):
    python3 work/measure/mem_profile.py > work/measure/mem-profile.log
"""
import os
import resource
import subprocess
import sys
import time


def resolve_pack_root():
    w = os.environ.get("LATTICE_WORK")
    if w:
        return w

    d = os.path.dirname(os.path.abspath(__file__))
    while True:
        if os.path.isdir(os.path.join(d, "work", "liboqs", "build")):
            return d
        parent = os.path.dirname(d)
        if parent == d:
            raise FileNotFoundError("pack root not found")
        d = parent


PACK_ROOT = resolve_pack_root()
BUILD_DIR = os.path.join(PACK_ROOT, "work", "liboqs", "build")

COMMANDS = [
    ["tests/speed_kem", "ML-KEM-768", "--duration", "3"],
    ["tests/speed_sig", "ML-DSA-65", "--duration", "3"],
]


def main():
    print("memory profile — peak RSS via resource.getrusage(RUSAGE_CHILDREN)")
    print("(/usr/bin/time is not installed on this machine; ru_maxrss is the")
    print("same quantity it reports as 'Maximum resident set size', in KiB.)")
    print("NOTE: ru_maxrss is the max over all children waited for so far in")
    print("this process, so for a per-command peak run one command per process:")
    print("  python3 work/measure/mem_profile.py speed_kem   (or speed_sig)")
    selected = sys.argv[1:] or None
    for argv in COMMANDS:
        if selected and argv[0].split("/")[1] not in selected:
            continue
        cmd = [os.path.join(BUILD_DIR, argv[0])] + argv[1:]
        start = time.monotonic()
        proc = subprocess.run(cmd, capture_output=True, text=True)
        wall = time.monotonic() - start
        usage = resource.getrusage(resource.RUSAGE_CHILDREN)
        print(f"command: {' '.join(cmd)}")
        print(f"  exit code: {proc.returncode}")
        print(f"  wall time: {wall:.2f} s")
        print(f"  user time: {usage.ru_utime:.2f} s, system time: {usage.ru_stime:.2f} s (cumulative children)")
        print(f"  Maximum resident set size: {usage.ru_maxrss} KiB ({usage.ru_maxrss / 1024:.1f} MiB)")
        if proc.returncode != 0:
            print(f"  stderr: {proc.stderr[-500:]}")


if __name__ == "__main__":
    main()
