#!/usr/bin/env python3
"""check_consistency.py — compare a fresh live run against committed data/.

Usage:
  python3 scripts/check_consistency.py <FRESH_DIR> <DATA_DIR>

FRESH_DIR is the scratch work/measure directory of the live run; DATA_DIR
is the pack's committed data/. Deterministic counts must match exactly
(KAT derand 20/20, input-check 0/20 per set, PQClean 20/20, tail 0/1088,
div total 0, ss mismatches 0, verify failures 0). Timing medians must
reproduce within 25% (the shared VM's scheduling noise moves medians by
up to ~15% run to run; means are not compared — they carry multi-ms
stalls). Exit 0 only if every comparison passes.
"""
import csv
import os
import re
import sys

FRESH, DATA = sys.argv[1], sys.argv[2]
FAILURES = []


def check(name, ok, detail=""):
    print(f"CONSISTENCY {name}: {'yes' if ok else 'NO'} ({detail})")
    if not ok:
        FAILURES.append(name)


def read(d, path):
    with open(os.path.join(d, path)) as f:
        return f.read()


def parse_retime(text):
    rows = {}
    alg = None
    for line in text.splitlines():
        m = re.match(r"^== (ML-KEM-\d+|ML-DSA-\d+) ==$", line)
        if m:
            alg = m.group(1)
            continue
        m = re.match(r"^(keygen|encaps|decaps|sign|verify)\s+n=\d+ mean=[\d.]+ "
                     r"median=([\d.]+) p95=[\d.]+ p99=[\d.]+ stdev=[\d.]+ "
                     r"ops/s=[\d.]+", line)
        if m and alg:
            rows[(alg, m.group(1))] = float(m.group(2))
    return rows


# --- retime medians within 25% -----------------------------------------
fresh_ret = parse_retime(read(FRESH, "retime.log"))
committed_ret = parse_retime(read(DATA, "retime.log"))
med_ok, med_worst = True, 0.0
for key, committed in committed_ret.items():
    fresh = fresh_ret.get(key)
    if fresh is None:
        med_ok = False
        print(f"CONSISTENCY retime median {key}: MISSING in fresh run")
        continue
    rel = abs(fresh - committed) / committed
    med_worst = max(med_worst, rel)
    if rel > 0.25:
        med_ok = False
        print(f"CONSISTENCY retime median {key}: fresh {fresh} vs "
              f"committed {committed} ({rel:.1%} off)")
check("retime medians within 25%", med_ok,
      f"{len(committed_ret)} ops, worst deviation {med_worst:.1%}")

# --- deterministic counts ------------------------------------------------
def count(text, pattern):
    return len(re.findall(pattern, text))

fresh_derand = read(FRESH, "kat-derand-check.log")
m = re.search(r"SUMMARY ML-KEM-768 derand-vs-rsp: (\d+) field-PASS, (\d+) field-FAIL",
              fresh_derand)
check("KAT derand 20/20", m and m.group(1) == "20" and m.group(2) == "0",
      m.group(0) if m else "no SUMMARY line")

fresh_inp = read(FRESH, "input-check.log")
acc = count(fresh_inp, r"encaps=ACCEPT")
check("liboqs non-reduced pk accepted == 0", acc == 0, f"{acc} accepted")
tamper = re.findall(r"tamper .* -> (REJECT\(error\)|.*)", fresh_inp)
check("tampered sk decaps errors == 6/6",
      len(tamper) == 6 and all(t == "REJECT(error)" for t in tamper),
      f"{len(tamper)} tamper cases")

fresh_pq = read(FRESH, "pqclean-check.log")
pq_acc = count(fresh_pq, r"enc=ACCEPT")
pq_tot = count(fresh_pq, r"mutated-key trial")
check("PQClean non-reduced pk accepted == 20/20",
      pq_acc == 20 and pq_tot == 20, f"{pq_acc}/{pq_tot}")

fresh_tail = read(FRESH, "tail-mutation.log")
m = re.search(r"accepted \(ss == original\): (\d+)", fresh_tail)
check("tail mutation accepted == 0/1088",
      m and m.group(1) == "0", m.group(0) if m else "no line")

fresh_timing = read(FRESH, "timing-probe.log")
m = re.search(r"mean difference \(valid - invalid\) = (-?[\d.]+) us; "
              r"3-sigma detection threshold = ([\d.]+) us", fresh_timing)
ok = bool(m) and abs(float(m.group(1))) < float(m.group(2))
check("timing diff < 3-sigma threshold", ok,
      m.group(0) if m else "no line")

fresh_disasm = read(FRESH, "disasm-check.log")
div_total = sum(int(x) for x in re.findall(
    r"TOTAL div/idiv instructions: (\d+)", fresh_disasm))
check("div/idiv total == 0", div_total == 0, f"total {div_total}")

fresh_mism = sum(int(x) for x in re.findall(
    r"decaps ss mismatches: (\d+) /", read(FRESH, "retime.log")))
fresh_ver = sum(int(x) for x in re.findall(
    r"verify failures: (\d+) /", read(FRESH, "retime.log")))
check("retime ss mismatches == 0", fresh_mism == 0, str(fresh_mism))
check("retime verify failures == 0", fresh_ver == 0, str(fresh_ver))

print(f"CONSISTENCY VERDICT: {'PASS' if not FAILURES else 'FAIL'} "
      f"-- {len(FAILURES)} failing checks: {FAILURES if FAILURES else 'none'}")
sys.exit(1 if FAILURES else 0)
