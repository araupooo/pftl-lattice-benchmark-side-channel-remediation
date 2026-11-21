# Remediation guidance — liboqs 0.16.0 (mlkem-native / mldsa-native)

Severity-ranked, from the findings register in
docs/side-channel-review.md §1 (also data/findings.csv,
outputs/findings.md). Each item states what to do, in what order, and
how to test the fix. Items marked Negative-result need no fix — they are
recorded so a maintainer does not re-open them.

## Priority order

1. **F-D2 (Medium)** — the only Medium finding.
2. **Lows** (F-M6, F-M7, F-M8, F-D3, F-D4, F-D7, F-W1) — defence in depth.
3. **Informational** (F-M10, F-M12, F-D9, F-D11, F-W3) — track, do not block.

## F-D2 (Medium) — rejected-signature challenges are the power/EM surface

[FAKTA] During signing, rejected attempts compute a real challenge
(`sign.c:716-723`), which the code explicitly declassifies as public
(`sign.c:718-722`: "Leaking challenge_bytes does not reveal…"), and then
discards the attempt. This is the exact surface of the published
power/EM key-recovery attacks (Zhou et al., TCHES 2025(4), pp. 817–847;
Zhao et al., ePrint 2026/056). The abort-loop iteration count is also
visible in timing (median 126.08 us, p99 575.05 us for ML-DSA-65 sign),
but no pure-timing key recovery is on record (F-D1, negative result).

**What to do:**

- **If signing happens where power/EM is observable** (shared host,
  co-tenant VM, device with a probeable power rail, HSM-adjacent
  deployment): treat ML-DSA signing as a sensitive operation. Run it in
  a dedicated, non-shared execution context; do not sign on a host where
  an attacker can sample power or EM. This is a deployment control, not
  a code patch — the rejected-attempt computation is inherent to the
  algorithm.
- **If signing happens where only timing is observable** (remote
  network attacker): no action required beyond the existing design —
  the iteration count is timing-visible but no pure-timing recovery is
  known, and the challenge bytes are public by construction.
- **Regression test:** a code review gate that fails if the
  declassification comment at `sign.c:718-722` is removed without a
  replacement analysis; a timing-distribution test (sign 1000x, assert
  the distribution shape stays abort-loop-like and the median stays
  within 25% of the committed value — see
  scripts/check_consistency.py).

## Lows — defence in depth

### F-M6 / F-D7 — keypair PCT compiled out

[FAKTA] `MLK_CONFIG_KEYGEN_PCT` is commented out in the liboqs build,
so the keypair pairwise-consistency test stubs return 0
(`kem.c:129-203`, stub at 189-203). ML-DSA keypair partially
compensates by re-deriving and constant-time-comparing `t0` and `tr`
(F-D8).

**What to do:** define `MLK_CONFIG_KEYGEN_PCT` (and the ML-DSA
equivalent) in the integration build. **Regression test:** the
`MLK_CONFIG_KEYGEN_PCT_BREAKAGE_TEST` must fail when the PCT is
disabled, and a keypair round-trip test (keypair → encaps → decaps →
ss match) must pass on every build (already covered by `test_kem` /
`test_sig`).

### F-M7 / F-D4 — void-RNG glue

[FAKTA] `mlk_randombytes` calls void `OQS_randombytes`
(`src/common/rand/rand.c:62-65`) and unconditionally returns 0, so the
`if (mlk_randombytes(...) != 0)` checks in `kem.c:268-272` and
`kem.c:354-358` are dead code. Mitigation in place: the built-in RNGs
call `exit(EXIT_FAILURE)` on failure, so a failure aborts the process
rather than silently continuing.

**What to do:** in an integration that supplies a custom RNG via
`OQS_randombytes_custom_algorithm`, audit that the custom RNG aborts
(or otherwise fails loudly) on failure — it must never return
silently with unfilled output. **Regression test:** a test that
registers a failing custom RNG and asserts the process exits
non-zero rather than producing a keypair.

### F-M8 / F-W1 — error codes cast verbatim to OQS_STATUS

[FAKTA] Backend error codes −2/−3 are cast verbatim to `OQS_STATUS`,
whose only error value is −1, so the distinction between error kinds
is lost at the wrapper (`src/kem/ml_kem/kem_ml_kem_768.c`,
`src/sig/ml_dsa/sig_ml_dsa_65.c`).

**What to do:** map backend codes explicitly in the wrapper (e.g.
−2 → `OQS_ERROR`, log the backend code) instead of casting. This is a
diagnosability fix, not a security fix — no failure is swallowed (F-W2,
negative result). **Regression test:** a test that forces a backend
error (e.g. tampered sk, see data/input-check.log) and asserts the
wrapper returns an error and the backend code is logged.

### F-D3 — `rej_eta` C fallback branches on secret-seed PRF output

[FAKTA] `mld_rej_eta_c` (`mldsa/src/poly_kl.c:204-276`) branches on the
acceptance of secret-seed PRF output, so the acceptance count is
timing-observable; the AVX2 eta4 sampler additionally does a
secret-indexed table lookup.

**What to do:** prefer the AVX2 path where the platform supports it
(the table lookup is still secret-indexed — see below); on the C
fallback, treat the sampler as timing-visible and do not sign on a host
where an attacker can time individual operations. For a full fix, the
sampler would need a constant-time rewrite (not attempted here — the
finding is reported, not fixed). **Regression test:** a timing probe
over the sampler's input distribution asserting no detectable
difference at the 3-sigma threshold (same method as
scripts/timing_probe.c).

## Informational — track, do not block

- **F-M10:** AVX2 `rej_uniform` asm has 3 conditional jumps, on
  public-seed XOF output only. No action; note it in the threat model.
- **F-M12:** `MLK_FREE` zeroizes the declared stack array, not compiler
  spill slots. Residual; consider `explicit_bzero`-style handling for
  the most sensitive temporaries if the platform's compiler is known to
  spill.
- **F-D9:** `poly_challenge` (SampleInBall) has a data-dependent
  rejection loop and indexed accesses, on public challenge bytes only.
  No action.
- **F-D11:** AVX2 `poly_decompose` / `poly_use_hint` / `polyz_unpack`
  were not line-reviewed. **Action:** line-review them before relying
  on the AVX2 ML-DSA path in a high-assurance deployment.
- **F-W3:** x86_64 vs C dispatch is a runtime CPU-feature check, not a
  secret-dependent branch. No action.

## What NOT to do

- Do not "fix" the negative results (F-M1, F-M2, F-M3, F-M4, F-M5,
  F-M9, F-M11, F-D1, F-D5, F-D6, F-D8, F-D10, F-W2): the patterns were
  checked and are absent in this code. Re-opening them without new
  evidence wastes review effort and risks introducing a bug.
- Do not treat the PQClean snapshot as a remediation target: it is
  archived and unmaintained. The fix for the RUSTSEC-2026-0585 shape is
  to use the maintained implementation (liboqs 0.16.0 / mlkem-native),
  which enforces the §7.2/§7.3 checks — verified here
  (data/input-check.log: 0/20 accepted per set).
- Do not present the gcc `poly_frommsg` check as a Clang result. The
  Clang 15–18 reproduction is still open (NV5); re-run it on a machine
  with Clang before claiming the Clang shape.
