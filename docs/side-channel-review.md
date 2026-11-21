# Side-Channel Source Review — mlkem-native v1.2.0 and mldsa-native in liboqs 0.16.0

**Pack note:** this review was written against the pinned liboqs 0.16.0 tree (tag commit `5a1a854b0dc9f2141bdc771c555ee60c37950183`). Paths inside liboqs are tree paths. Committed measurement artefacts cited here live in `data/` (raw logs) and `outputs/` (generated tables) of this pack; the review's original `work/` paths were remapped accordingly. The PQClean snapshot was not line-reviewed (out of scope); its FIPS 203 §7.2 gap is confirmed by measurement instead (data/pqclean-check.log: 20/20 non-reduced keys accepted). The findings register (§1) is also machine-readable in data/findings.csv and outputs/findings.md.


- **Scope:** line-level review of secret-dependent paths in the two backends
  vendored by liboqs 0.16.0 (tag commit `5a1a854b0dc9f2141bdc771c555ee60c37950183`).
  Primary parameter sets ML-KEM-768 and ML-DSA-65; ML-KEM-512/1024 and
  ML-DSA-44/87 spot-checked for differences.
- **Trees reviewed:**
  - `src/kem/ml_kem/mlkem-native_ml-kem-{512,768,1024}_{ref,x86_64}/`
  - `src/sig/ml_dsa/mldsa-native_ml-dsa-{44,65,87}_{ref,x86_64}/`
  - liboqs wrappers `src/kem/ml_kem/kem_ml_kem_768.c`,
    `src/sig/ml_dsa/sig_ml_dsa_65.c`, `src/common/common.h`,
    `src/common/rand/rand.c`.
- **Build under review:** Release (`-O3`), `OQS_DIST_BUILD=ON`,
  `OQS_ENABLE_KEM_ml_kem_768_x86_64=ON`,
  `OQS_ENABLE_TEST_CONSTANT_TIME=OFF` (from `build/CMakeCache.txt`).
  Build completed 100% during this review (`lib/liboqs.a`, 38,720,322
  bytes; `tests/speed_kem` present); the §7 binary check **ran** against
  those artefacts (GCC 13.3.0, `-O3 -DNDEBUG`).
  No Clang installed on this machine; all Clang-shape conclusions are
  source-level only (see F-M3).
- **Method:** every claim below cites `file:function:line` verified by reading
  the pinned source. A pattern reported "absent" means the code at the cited
  lines was read and does not contain it. Source review alone cannot prove
  constant-time behaviour of a compiled binary; §7 states what the binary
  check did or did not establish.
- **Conventions:** all paths are relative to the liboqs 0.16.0 tree unless
  stated otherwise. "Negative-result" means the vulnerable pattern was
  looked for and not found at the cited lines.

## 1. Findings register

Severity scale: Critical / High / Medium / Low / Informational /
Negative-result. Findings are ordered by severity within each backend.

### 1.1 ML-KEM (mlkem-native)

| ID | Severity | One-line summary |
|----|----------|------------------|
| F-M1 | Negative-result | KyberSlash1 (division in `poly_tomsg`): absent — multiply-shift only |
| F-M2 | Negative-result | KyberSlash2 (divisions in `poly_compress`/`polyvec_compress`): absent — multiply-shift only |
| F-M3 | Negative-result (GCC binary confirmed) | Clang `poly_frommsg` branch: source hardened with a value barrier; the GCC 13.3.0 `-O3` binary is branch-free apart from a loop back-edge (§7). Clang 15–18 reproduction still open (no Clang on this machine) |
| F-M4 | Negative-result | wolfSSL-style incomplete FO comparison: absent — full-length constant-time compare |
| F-M5 | Negative-result | FIPS 203 §7.2 / §7.3 input checks: present (unlike the PQClean code in RUSTSEC-2026-0585) |
| F-M6 | Low | Keypair pairwise-consistency test (PCT) is compiled out in the liboqs build |
| F-M7 | Low | RNG failure cannot propagate through the liboqs `randombytes` glue (mitigated: failure aborts the process) |
| F-M8 | Low | Backend error codes −2/−3 are cast verbatim to `OQS_STATUS`, whose only error value is −1 |
| F-M9 | Negative-result | Rejection sampling / CBD: no secret-dependent branch on key material in the C paths |
| F-M10 | Informational | AVX2 `rej_uniform` asm has 3 conditional jumps, on public-seed XOF output only |
| F-M11 | Negative-result | §3.3 zeroization: present on all secret-bearing temporaries in keypair/encaps/decaps |
| F-M12 | Informational | Residual: `MLK_FREE` zeroizes the declared stack array, not compiler spill slots |

### 1.2 ML-DSA (mldsa-native)

| ID | Severity | One-line summary |
|----|----------|------------------|
| F-D1 | Negative-result | No pure-timing key recovery on record; abort-loop iteration count is not returned in any value (timing only) |
| F-D2 | Medium | Rejected-signature challenges are computed, declassified as public, and discarded — the exact surface of the published power/EM key-recovery attacks |
| F-D3 | Low | `rej_eta` C fallback branches on secret-seed PRF output (acceptance count observable via timing); AVX2 eta4 sampler additionally does a secret-indexed table lookup |
| F-D4 | Low | Same void-RNG glue issue as F-M7 (failure aborts rather than propagating) |
| F-D5 | Negative-result | Verification challenge compare is full-length and constant-time; early exits operate on public signature data only |
| F-D6 | Negative-result | §3.6.3 zeroization: present on signing/keypair/verify temporaries, including rejected attempts |
| F-D7 | Low | Keypair PCT is compiled out in the liboqs build (keypair self-check at F-D8 partially compensates) |
| F-D8 | Negative-result | Keypair internally re-derives and constant-time-compares `t0` and `tr` before returning |
| F-D9 | Informational | `poly_challenge` (SampleInBall) has a data-dependent rejection loop and indexed accesses, on public challenge bytes only |
| F-D10 | Negative-result | `y` (masking randomness) sampling is rejection-free bit-unpacking — no timing channel there |
| F-D11 | Informational | AVX2 `poly_decompose` / `poly_use_hint` / `polyz_unpack` files were not line-reviewed; residual coverage gap |

### 1.3 liboqs wrappers

| ID | Severity | One-line summary |
|----|----------|------------------|
| F-W1 | Low | Wrappers cast backend `int` to `OQS_STATUS` without mapping (see F-M8/F-D8 detail) |
| F-W2 | Negative-result | No backend failure is swallowed or converted to a success with a random output |
| F-W3 | Informational | x86_64 vs C dispatch is a runtime CPU-feature check, not a secret-dependent branch |

---

## 2. ML-KEM detail (mlkem-native, ML-KEM-768 primary)

Paths below use the `_768_ref` tree; §2.8 records the 512/1024 and x86_64
deltas. `MLKEM_Q = 3329` (`mlkem/src/params.h:23`).

### 2.1 `poly_tomsg` — KyberSlash1 (F-M1, Negative-result)

`mlk_poly_tomsg`, `mlkem/src/compress.c:717-737`, calls
`mlk_scalar_compress_d1` per coefficient (line 733). That function,
`mlkem/src/compress.h:50-67`, computes `round(u * 2 / MLKEM_Q)` as

```c
/* check-magic: 1290168 == 2*round(2^31 / MLKEM_Q) */
uint32_t d0 = (uint32_t)u * 1290168;
return (uint8_t)((d0 + ((uint32_t)1u << 30)) >> 31);
```

— one 32-bit multiply and shifts. There is no division instruction in the
source and no division by `MLKEM_Q` on any value: a search of all `.c`/`.h`
under `mlkem/src/` for `/ MLKEM_Q`, `% MLKEM_Q`, `/ 3329`, `% 3329` returns
only comments, CBMC `ensures` contract clauses (e.g. `compress.h:54,97,163,
229,295`, which are specifications, not executed code), and one
compile-time-constant expression, `sampling.c:146`
(`MLKEM_GEN_MATRIX_NBLOCKS`, folded at compile time; its operands are
constants). The Barrett reduction used elsewhere,
`mlk_barrett_reduce`, `mlkem/src/poly.c:75-106`, likewise replaces
`round(a/MLKEM_Q)` with magic `20159 == round(2^26 / MLKEM_Q)` (line 88),
`(magic * a + (1 << 25)) >> 26` (line 96). Montgomery multiplication,
`mlk_fqmul`, `mlkem/src/poly.c:43-62`, is multiply + Montgomery reduce,
no division. **Verdict: KyberSlash1 pattern absent in source.**

- Exploit preconditions: none at source level; would require the compiler
  to reintroduce a division, which the multiply-shift shape does not invite.
- Measurement worker must test: time decapsulation across secret-dependent
  inputs (KyberSlash1 probe) and inspect the compiled binary for `div`/`idiv`
  in the decaps symbol range (§7).
- Remediation: none needed at source. Regression test: add a build-time
  check that no `div`/`idiv` appears in the ML-KEM object files (see §7).

### 2.2 `poly_compress` / `polyvec_compress` — KyberSlash2 (F-M2, Negative-result)

All four scalar compressors use the same multiply-shift idiom with
checked magic constants:

- `mlk_scalar_compress_d1`, `compress.h:50-67`, magic `1290168`.
- `mlk_scalar_compress_d4`, `compress.h:93-109`, magic `1290160`,
  `return (uint8_t)((d0 + ((uint32_t)1u << 27)) >> 28);`
- `mlk_scalar_compress_d5`, `compress.h:159-175`, magic `1290176`,
  `>> 27`.
- `mlk_scalar_compress_d10`, `compress.h:225-242`, magic `2642263040`,
  64-bit multiply, `>> 33`.
- `mlk_scalar_compress_d11`, `compress.h:291-308`, magic `5284526080`,
  64-bit multiply, `>> 33`.

Callers: `mlk_poly_compress_d4_c` (`compress.c:36-69`),
`mlk_poly_compress_d10_c` (`compress.c:100-136`),
`mlk_poly_compress_d5_c` (`compress.c:280-...`),
`mlk_poly_compress_d11_c` (`compress.c:344-...`). Decompressors
(`mlk_scalar_decompress_d4/d5/d10/d11`, `compress.h:127-135,193-...,259-268,
325-334`) are multiply-by-`MLKEM_Q` plus shift — a multiply, not a division.
**Verdict: KyberSlash2 pattern absent in source.** The x86_64 AVX2
compress/decompress assembly files contain zero conditional jumps and zero
`div` mentions (§2.8).

- Measurement worker must test: time encapsulation / re-encryption in
  decapsulation across secret-dependent inputs (KyberSlash2 probe) and
  count `div`/`idiv` in the compiled encaps/decaps ranges (§7).

### 2.3 `poly_frommsg` — Clang branch shape (F-M3, Negative-result for the GCC binary; Clang still open)

`mlk_poly_frommsg`, `mlkem/src/compress.c:679-708`:

```c
/* Prevent the compiler from recognizing this as a bit selection */
uint8_t mask = mlk_value_barrier_u8((uint8_t)(1u << j));
r->coeffs[8 * i + j] = mlk_ct_sel_int16(MLKEM_Q_HALF, 0, msg[i] & mask);
```

The header comment (lines 672-677) explicitly names the hazard: the
reference implementation's `(msg[i] >> j) & 1` lets the compiler reason the
value is 0 or 1. The mitigation here is a value barrier around the mask
(`mlk_value_barrier_u8`, `mlkem/src/verify.h:127-132`, an empty inline-asm
block `__asm__ volatile("" : "+r"(b))` for GCC/Clang, falling back to a
volatile-global XOR barrier, `verify.h:102-109`) plus a mask-based select,
`mlk_ct_sel_int16` (`verify.h:289-296`), whose mask comes from
`mlk_ct_cmask_nonzero_u16` (`verify.h:229-241`), itself value-barriered.
This differs from the upstream reference fix (moving the conditional move
into a separate file so Clang cannot recognise the binary condition); it is
a different mechanism aimed at the same compiler behaviour. The barrier is
a mitigation, not a proof: whether a given compiler version still emits a
branch can only be settled on the binary. **For the GCC 13.3.0 `-O3` binary
actually built here, it is settled: §7 shows the compiled
`poly_frommsg` (both C and x86_64 variants) contains exactly one
conditional jump, a backward `jne` loop back-edge, and the bit selection is
implemented with unrolled `and`/`movzbl` arithmetic (`and $0x681` =
`MLKEM_Q_HALF` mask) — no branch on any message bit.** The Clang half of
the question remains open (no Clang on this machine).

- **Verdict: vulnerable source pattern absent; GCC-binary branch-free
  behaviour confirmed (§7).** No Clang is installed on this machine, so
  the Clang 15–18 reproduction could not be run and no Clang-compiled
  binary was inspected.
- Exploit preconditions: a compiler that sees through the value barrier
  and reintroduces a secret-dependent branch on `msg` bits, plus a local
  timing observer over many decapsulations (the published demo recovered
  ML-KEM-512 in under 10 minutes on a laptop).
- Measurement worker must test: compile the `poly_frommsg`-equivalent code
  with Clang 15–18 at `-O2`/`-Os`/`-O3 -fno-vectorize` if Clang can be
  installed, disassemble for a branch on the message bit, and time
  decapsulation; re-run the §7 disassembly check on every toolchain change.
- Remediation: keep the value barrier; do not "simplify" `mlk_poly_frommsg`
  or `mlk_ct_sel_int16`; pin the compiler version in the build and re-run
  the disassembly check on every toolchain change.
- Regression test: a build-time disassembly assertion that the compiled
  `poly_frommsg` contains no conditional jump whose condition derives from
  the message buffer.

### 2.4 FO decapsulation comparison — wolfSSL shape (F-M4, Negative-result)

`mlk_kem_dec`, `mlkem/src/kem.c:376-442`. Re-encryption and comparison:

```c
/* kem.c:416 */ ret = mlk_indcpa_enc(tmp, buf, pk, kr + MLKEM_SYMBYTES, context);
...
/* kem.c:422 */ fail = mlk_ct_memcmp(ct, tmp, MLKEM_INDCCA_CIPHERTEXTBYTES);
/* kem.c:425-428 */ mlk_memcpy(tmp, sk + ... - MLKEM_SYMBYTES, MLKEM_SYMBYTES);
                    mlk_memcpy(tmp + MLKEM_SYMBYTES, ct, MLKEM_INDCCA_CIPHERTEXTBYTES);
                    mlk_hash_j(ss, tmp, MLKEM_SYMBYTES + MLKEM_INDCCA_CIPHERTEXTBYTES);
/* kem.c:431 */ mlk_ct_cmov_zero(ss, kr, MLKEM_SYMBYTES, fail);
```

The comparison is a single constant-time `mlk_ct_memcmp` over the **full**
ciphertext length `MLKEM_INDCCA_CIPHERTEXTBYTES`, which equals
`MLKEM_INDCPA_BYTES` (`params.h:74`), i.e. `K * POLYCOMPRESSEDBYTES_DU +
POLYCOMPRESSEDBYTES_DV` (`params.h:66-67`):

| set | K | du / dv bytes | ciphertext bytes compared |
|-----|---|---------------|---------------------------|
| ML-KEM-512 | 2 | 2×320 + 128 | **768** |
| ML-KEM-768 | 3 | 3×320 + 128 | **1088** |
| ML-KEM-1024 | 4 | 4×352 + 160 | **1568** |

These match the FIPS 203 ciphertext sizes. The comparator itself,
`mlk_ct_memcmp`, `mlkem/src/verify.h:338-369`, accumulates `r |= a[i] ^ b[i]`
with a second XOR accumulator `s` (lines 356-358) explicitly to prevent the
compiler from early-aborting the loop once `r == 0xFF`, and converts the
result through a value barrier (line 368); there is no early exit and no
length truncation. The conditional move, `mlk_ct_cmov_zero`,
`verify.h:388-406`, selects per byte with `mlk_ct_sel_uint8`
(`verify.h:311-315`). The re-encryption path is not hand-written SIMD: the
x86_64 backend reuses the same C `mlk_indcpa_enc` with AVX2 assembly only
for NTT/compress/rejection primitives, none of which reimplements the
comparison. **Verdict: wolfSSL pattern absent — no byte range is skipped,
and the comparison is constant-time by construction.** The wolfSSL bugs
were a truncated AVX2 compare (1,536 of 1,568 bytes) and a truncated NEON
compare (~784 of 1,568 bytes); the analogous failure here would be a
shortened length argument at `kem.c:422` or an early-exit comparator, and
neither is present.

- Measurement worker must test: the tail-mutation sweep — flip each of the
  last 32 ciphertext bytes (and each byte position once) and confirm
  decapsulation returns the implicit-rejection key, never the true key.
- Remediation: none needed. Regression test: a unit test asserting
  `MLKEM_INDCCA_CIPHERTEXTBYTES` equals the FIPS 203 ciphertext size per
  parameter set, plus the tail-mutation sweep in CI.

### 2.5 Input checks, FIPS 203 §7.2 / §7.3 (F-M5, Negative-result)

- §7.2 encapsulation-key modulus check: `mlk_kem_enc_derand`,
  `kem.c:306-311`, calls `mlk_kem_check_pk(pk, context)` before any use of
  the key and aborts on failure. `mlk_kem_check_pk`, `kem.c:43-70`,
  decodes the polyvec, reduces, re-encodes, and compares with
  `mlk_ct_memcmp(pk, p_reencoded, MLKEM_POLYVECBYTES)` (line 62) —
  1,152 bytes for ML-KEM-768. The 32-byte seed suffix of the public key is
  arbitrary bytes by construction and has nothing to range-check.
- §7.3 decapsulation-key hash check: `mlk_kem_dec`, `kem.c:395-400`, calls
  `mlk_kem_check_sk(sk, context)` first. `mlk_kem_check_sk`, `kem.c:76-115`,
  recomputes `H(pk)` and compares the stored 32-byte hash with
  `mlk_ct_memcmp(..., MLKEM_SYMBYTES)` (lines 105-108).
- Both checks sit on every entry path: `mlk_kem_enc` → `mlk_kem_enc_derand`
  (`kem.c:340-369`, via line 362) and `mlk_kem_dec` directly. The liboqs
  wrappers call these entry points (see §4).

**Verdict: the checks PQClean skips (RUSTSEC-2026-0585: 108/112/116 invalid
encapsulation keys and 2 invalid decapsulation keys accepted per set) are
performed here.** Measurement worker must still run the input-check battery
(Wycheproof-style invalid keys) against the built library rather than
trusting this reading.

### 2.6 Keypair generation and PCT (F-M6, Low)

`mlk_kem_keypair`, `kem.c:254-283`: draws 64 bytes of coins via
`mlk_randombytes` (lines 268-272), calls `mlk_kem_keypair_derand`
(`kem.c:210-248`), which derives the keypair, stores `H(pk)` and the
rejection seed `z` into the secret key (lines 223-228), and runs
`mlk_check_pct(pk, sk, context)` (line 234). On any failure the outputs are
zeroized (lines 242-245). **However**, the PCT body is compiled only under
`MLK_CONFIG_KEYGEN_PCT` (`kem.c:129-203`); without it the stub at
`kem.c:189-203` returns 0 unconditionally. In the liboqs build the option
is off: `integration/liboqs/config_c.h:222` and
`integration/liboqs/config_x86_64.h:261` both read
`/* #define MLK_CONFIG_KEYGEN_PCT */`. So no encaps/decaps consistency
test runs at key generation time in this build.

- Severity Low: a faulty keypair would be caught by the first real
  encaps/decaps round-trip, and by the §7.2/§7.3 checks; the missing PCT is
  a FIPS 140-3 IG conformance gap, not a side-channel leak.
- Remediation: define `MLK_CONFIG_KEYGEN_PCT` in the liboqs integration
  configs. Regression test: keypair with a deliberately corrupted PCT
  (`MLK_CONFIG_KEYGEN_PCT_BREAKAGE_TEST`) must fail.

### 2.7 Sampling (F-M9, Negative-result)

- Rejection sampling, `mlk_rej_uniform_c`, `mlkem/src/sampling.c:33-83`:
  branches `if (val0 < MLKEM_Q)` (line 71) and `if (ctr < target && val1 <
  MLKEM_Q)` (line 75) on SHAKE XOF output. In every call site the input
  buffer is XOF output keyed by the **public** matrix seed: matrix
  generation in `mlk_poly_rej_uniform` / `mlk_poly_rej_uniform_x4`
  (`sampling.c:154-252`), called from `indcpa.c:254-257,286` with the public
  seed. Timing variation from the acceptance count therefore leaks only
  public-seed-derived data. No call site feeds secret-seed bytes to
  `rej_uniform`.
- CBD, `mlk_poly_cbd2` (`sampling.c:275-302`) and `mlk_poly_cbd3`
  (`sampling.c:328-356`): branch-free bit arithmetic (`& 0x55555555`,
  shifts, subtract). Noise generation, `mlk_poly_getnoise_eta1_4x` /
  `mlk_poly_getnoise_eta2` (`mlkem/src/poly_k.c:333-379,415-432`), derives
  noise from the secret seed via the SHAKE PRF and converts with CBD; the
  PRF output buffers and extended keys are zeroized (lines 378-379,
  431-432).
- **Verdict: no secret-dependent branch or table lookup in the C sampling
  paths.** Residual is the AVX2 `rej_uniform` assembly (F-M10).

### 2.8 x86_64 backend deltas

- The C sources are **byte-identical** between `_ref` and `_x86_64` for
  `compress.c`, `sampling.c`, `poly.c`, `poly_k.c`, `indcpa.c`, `kem.c`,
  `verify.c`, `verify.h` (verified with `diff -q`, no differences). The
  backends differ only in the native dispatch layer
  (`native/x86_64/meta.h`, which defines `MLK_USE_NATIVE_POLY_COMPRESS_D4/
  D5/D10/D11`, `MLK_USE_NATIVE_REJ_UNIFORM`, NTT/INTT, reduce, tomont,
  tobytes/frombytes) and the assembly files.
- Conditional-jump / division scan of all 21 `.S` files under
  `mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/`:
  20 files contain **0** conditional jumps and **0** `div` mentions;
  `rej_uniform_avx2_asm.S` contains **3** conditional jumps
  (lines 41, 76, 79) and **0** `div` mentions.
- F-M10 (Informational): the three jumps in `rej_uniform_avx2_asm.S` are
  `je Lrej_uniform_asm_end` on `buflen == 0` (line 41, public length),
  `jae Lrej_uniform_asm_final_copy` on accepted-count `>= 256` (line 76),
  and `ja Lrej_uniform_asm_loop_start` on input exhaustion (line 79).
  The accepted-count branch is the standard rejection-sampling loop exit;
  its input is public-seed XOF output (matrix A). Not a secret leak, but
  it is the one place where the AVX2 backend's control flow depends on
  sampled values at all — the measurement worker's timing probe should
  cover matrix generation as well as decapsulation.
- The x86_64 target is compiled with `-mavx2 -mbmi2 -mpopcnt`
  (`src/kem/ml_kem/CMakeLists.txt`, `ml_kem_768_x86_64` target) and
  `MLK_CONFIG_USE_NATIVE_BACKEND_ARITH` is defined
  (`config_x86_64.h:103`), so the AVX2 paths are the ones actually built
  for this machine (see also §4, runtime dispatch).

### 2.9 Randomness handling (F-M7, Low)

`mlk_randombytes` is not provided by mlkem-native; liboqs supplies it in
`integration/liboqs/config_c.h:177-181`:

```c
static MLK_INLINE int mlk_randombytes(uint8_t *ptr, size_t len)
{
  OQS_randombytes(ptr, len);
  return 0;
}
```

`OQS_randombytes` returns `void` (`src/common/rand/rand.c:62-65`) and
dispatches to the configured algorithm — OpenSSL `RAND_bytes` by default
when `OQS_USE_OPENSSL` is set (`rand.c:37-42`). Both built-in algorithms
abort the process on failure (`exit(EXIT_FAILURE)`) rather than returning
short or weak randomness: OpenSSL path `rand.c:140-...`, system path
`rand.c:68-...` (`getentropy` / `/dev/urandom` failures call
`exit(EXIT_FAILURE)`). Consequence: `MLK_ERR_RNG_FAIL` (`common.h:278`)
is **unreachable** through the liboqs glue — an RNG failure kills the
process instead of producing an error return. That is fail-safe, but it
means (a) the `if (mlk_randombytes(...) != 0)` checks in `kem.c:268-272`
and `kem.c:354-358` are dead code in this build, and (b) if anyone
registers a custom algorithm via `OQS_randombytes_custom_algorithm`
(`rand.c:58-60`), its failure mode is whatever that algorithm does,
with no error propagation at all. Severity Low.

### 2.10 Zeroization, FIPS 203 §3.3 (F-M11, Negative-result; F-M12, Informational)

`MLK_FREE` zeroizes: `mlkem/src/common.h:237-242` (default stack
allocation) calls `mlk_zeroize(mlk_alloc_##v, sizeof(...))`;
`mlk_zeroize`, `verify.h:422-440`, is `memset` plus an empty-asm memory
barrier. Coverage verified by reading the cleanup paths:

| function | buffers zeroized |
|----------|------------------|
| `mlk_kem_keypair` (`kem.c:278-282`) | `coins` (64 B) |
| `mlk_kem_keypair_derand` (`kem.c:240-245`) | `pk`, `sk` on failure |
| `mlk_kem_enc_derand` (`kem.c:328-333`) | `kr`, `buf` (64 B each) |
| `mlk_kem_enc` (`kem.c:364-368`) | `coins` |
| `mlk_kem_dec` (`kem.c:433-440`) | `tmp` (1,120 B), `kr`, `buf` |
| `mlk_check_pct` (`kem.c:180-187`) | `ss_dec`, `ss_enc`, `ct` |
| `mlk_kem_check_pk` (`kem.c:64-69`) | `p_reencoded`, `p` |
| `mlk_kem_check_sk` (`kem.c:110-114`) | `test` |
| `mlk_indcpa_keypair_derand` (`indcpa.c:502-508`) | `skpv_cache`, `skpv`, `pkpv`, `e`, `a`, `coins_with_domain_separator`, `buf` |
| `mlk_indcpa_enc` (`indcpa.c:582-591`) | `sp_cache`, `epp`, `k` (message poly), `v`, `b`, `ep`, `pkpv`, `sp`, `at`, `seed` |
| `mlk_indcpa_dec` (`indcpa.c:633-637`) | `b_cache`, `sb`, `v`, `skpv`, `b` |
| `mlk_poly_rej_uniform[_x4]` (`sampling.c:214,251`) | XOF `buf` |
| `mlk_poly_getnoise_eta*` (`poly_k.c:378-379,431-432`) | `buf`, `extkey` |

Gaps / caveats (F-M12): `MLK_FREE` zeroizes the declared stack array, but
a compiler may spill secret-derived values (e.g. intermediate NTT
coefficients, the `fail` byte, the decrypted message `m` while it sits in
`buf` in `kem.c:402-412`) into other stack slots that are never zeroized;
and the decrypted message `m` itself is the caller's buffer, zeroized only
indirectly via `buf` in `mlk_kem_dec`. This is the standard residual for
stack zeroization, not a found leak.

### 2.11 512 / 1024 spot-check

`compress.c` and `kem.c` are byte-identical across all three parameter sets
(`diff` empty). The only differences are `params.h` (`K`, `ETA1`, `du`/`dv`,
compressed sizes) and the resulting ciphertext lengths (§2.4 table). All
ML-KEM-768 conclusions therefore carry over to 512/1024, except that
ML-KEM-512 uses `cbd3` (`ETA1 = 3`, `params.h:39`) in addition to `cbd2`;
`cbd3` is the same branch-free shape as `cbd2` (§2.7).

---

## 3. ML-DSA detail (mldsa-native, ML-DSA-65 primary)

Parameter values for ML-DSA-65 (`mldsa/src/params.h:34-42`, 65-block):
`Q = 8380417`, `K = 6`, `L = 5`, `ETA = 4`, `TAU = 49`, `BETA = 196`,
`GAMMA1 = 2^19 = 524288`, `GAMMA2 = (Q-1)/32 = 261888`,
`CTILDEBYTES = 48`. (44: `GAMMA1 = 2^17`, `BETA = 78`, `CTILDEBYTES = 32`;
87: `GAMMA1 = 2^19`, `BETA = 120`, `CTILDEBYTES = 64`.)

### 3.1 Signing abort loop (F-D1, Negative-result)

`mld_sign_signature_internal`, `mldsa/src/sign.c:824-948`. The loop
(lines 880-929):

```c
/* sign.c:880 */ while (1)
...
/* sign.c:908-912 */ if (nonce == nonce_limit) { ret = MLD_ERR_SIGN_ATTEMPTS_EXHAUSTED; break; }
...
/* sign.c:914-921 */ ret = mld_attempt_signature_generation(sig, mu, rhoprime, nonce, mat, s1hat, s2hat, t0hat, context);
                     nonce++;
                     if (ret == 0) { *siglen = MLDSA_CRYPTO_BYTES; break; }
/* sign.c:922-926 */ else if (ret != MLD_ERR_FAIL) { break; }  /* propagate OOM etc. */
/* otherwise, try again */
```

- The bound: `nonce_limit = mld_get_max_signing_attempts()` (line 835),
  default `MLD_CONFIG_MAX_SIGNING_ATTEMPTS = MLD_NONCE_UB`
  (`sign.c:586-587`), where `MLD_NONCE_UB = (UINT16_MAX - MLDSA_L) /
  MLDSA_L` (`sign.c:489`) — **13,106 for ML-DSA-65** (`L = 5`), far above
  the FIPS 204 Appendix C bound (≥ 814, referenced in the
  `MLD_ERR_SIGN_ATTEMPTS_EXHAUSTED` comment, `common.h:316-319`). Expected
  attempts are ~5.1 for ML-DSA-65 (FIPS 204 Table 1).
- What decides rejection: three norm checks inside one attempt
  (`mld_attempt_signature_generation`, `sign.c:616-821`):
  1. `z`: `z_invalid = mld_poly_chknorm(z, MLDSA_GAMMA1 - MLDSA_BETA)`
     (line 558; bound 524,092), `if (z_invalid) return MLD_ERR_FAIL`
     (lines 565-567).
  2. `w0`: `w0_invalid = mld_poly_chknorm(&w0->vec[k], MLDSA_GAMMA2 -
     MLDSA_BETA)` (line 756; bound 261,692), reject at lines 759-762.
  3. `ct0` hint: `h_invalid = mld_poly_chknorm(z, MLDSA_GAMMA2)`
     (line 771; bound 261,888), reject at lines 774-777.
  The checks themselves are constant-time (see §3.2), but the *decision*
  is an ordinary branch on a declassified flag: lines 564, 758, 773 carry
  `MLD_CT_TESTING_DECLASSIFY(&z_invalid / &w0_invalid / &h_invalid, ...)`
  with the comment that leaking *which* check failed is acceptable because
  the candidate signature is discarded (lines 558-564).
- Is the iteration count observable in any returned value? **No.** On
  success `*siglen` is the fixed `MLDSA_CRYPTO_BYTES` (line 919); on any
  failure `*siglen = 0` and the signature buffer is zeroed (lines 933-938,
  and again in the public wrapper `sign.c:993-1003`). The nonce is never
  returned. The only observable channel for the attempt count is the
  wall-clock duration of the sign call.
- **Verdict (F-D1): negative result for pure timing.** No timing-only key
  recovery from the abort loop is on record, and the code exposes no
  iteration-count value. The measurement worker must still run the
  abort-loop timing probe: sign N ≥ 1000 messages, correlate signing time
  against the attempt count (obtainable in a test build by instrumenting
  the loop, not from the API), and report the correlation with a stated
  detection threshold rather than asserting "secure".

### 3.2 Rejection sampling and norm checks (F-D3, Low)

- `mld_poly_chknorm_c`, `mldsa/src/poly.c:914-956`: branch-free mask
  accumulation — `t |= mld_ct_cmask_neg_i32(B - 1 -
  mld_ct_abs_i32(a->coeffs[i]))` (line 952); the comment (lines 946-949)
  notes the reference implementation leaks *which* coefficient violates
  the bound via a conditional, and this code deliberately does not. The
  AVX2 version, `poly_chknorm_avx2.c:29-46` (x86_64 tree), is vector
  `abs`/`cmpgt`/`or` plus `_mm256_testz_si256` — branch-free.
- `mld_rej_uniform_c`, `mldsa/src/poly.c:543-587`: `if (t < MLDSA_Q)`
  (line 578) on SHAKE output. Used for matrix A from the public seed
  `rho` — public data only.
- `mld_rej_eta_c`, `mldsa/src/poly_kl.c:204-276`: branches on the
  acceptance of 4-bit nibbles drawn from SHAKE output keyed by the
  **secret** seed (sampling `s1`/`s2`). For ML-DSA-65 (`ETA = 4`):
  `t_valid = t0 < 9` (line 256), `if (t_valid) { a[ctr++] = 4 - t0; }`
  (lines 258-261), same for `t1` (lines 262-267). The code documents the
  leakage model explicitly (lines 235-239): "The inputs and outputs to the
  rejection sampling are secret. However, it is fine to leak which
  coefficients have been rejected." The timing channel reveals the *count*
  of rejected nibbles per block, i.e. a few bits of PRF output per block;
  those bits are SHAKE output keyed by the secret seed, not key bits, and
  learning them gives no practical path to the key (SHAKE preimage
  resistance). The reference implementation has the same shape.
  Severity Low — a documented, accepted leak of PRF-output acceptance
  counts, not of key material.
- AVX2 eta4 sampler, `mld_rej_uniform_eta4_avx2`,
  `native/x86_64/src/rej_uniform_eta4_avx2.c:36-...`: vectorised
  acceptance using `_mm256_movemask_epi8` and a **table lookup**
  `mld_rej_uniform_table[good & 0xFF]` (indexed by the acceptance mask of
  8 nibbles, i.e. by secret-seed PRF output). The table is 256 entries
  (small, likely L1-resident), but the access pattern is secret-dependent
  in principle — a cache-timing channel of the same acceptance-count
  information, with a marginally stronger observable (which nibbles, not
  just how many). Severity Low, same reasoning as the C fallback; the C
  fallback has no table lookup. The ML-DSA-65 x86_64 `rej_uniform_avx2.c`
  has the same shape (`while` loops plus `if (t < MLDSA_Q)` scalar tail,
  lines ~50-110) on public-`rho` data.
- `mld_poly_uniform_gamma1`, `mldsa/src/poly_kl.c:477-502`: **rejection-free**
  — fixed SHAKE squeeze followed by `mld_polyz_unpack` bit-unpacking
  (F-D10). No timing channel in `y` sampling.

### 3.3 Nonce / randomness handling (F-D4, Low)

- The public liboqs entry is **hedged (randomized)**: `mld_sign_signature`,
  `sign.c:954-1010`, draws 32 fresh bytes, `mld_randombytes(rnd,
  MLDSA_RNDBYTES)` (lines 982-986), marks them secret (line 987), and
  passes them into `mld_sign_signature_internal`, where
  `rhoprime = CRH(key, rnd, mu)` (lines 868-870). The deterministic variant
  exists only as a direct call to the internal function with all-zero
  `rnd` (comment lines 980-981) and is **not exposed by liboqs**:
  `OQS_SIG_ml_dsa_65_sign` (`src/sig/ml_dsa/sig_ml_dsa_65.c:77-99`)
  calls the randomized entry with `ctx = NULL, 0`.
- Same glue issue as ML-KEM (F-M7): `mld_randombytes`,
  `integration/liboqs/config_c.h:181-185`, calls void `OQS_randombytes`
  and unconditionally returns 0, so `MLD_ERR_RNG_FAIL` (`common.h:314`) is
  unreachable through liboqs; the built-in RNGs abort the process on
  failure instead. Severity Low.
- `rhoprime` (the per-signature secret seed) is derived fresh per call
  from `key` + `rnd` + `mu`; the `y` vector is derived per attempt from
  `rhoprime` + `nonce` (`mld_yvec_init`, `sign.c:706`), so distinct attempts
  use distinct masking randomness.

### 3.4 Comparison / verification paths (F-D5, Negative-result)

`mld_sign_verify_internal`, `sign.c:1087-1216`:

- Early exits: wrong `siglen` (lines 1114-1118) and `z` norm failure
  (lines 1125-1129) operate on attacker-controlled, public signature data.
  `mld_sig_unpack_hints` failure (lines 1182-1186) likewise.
- Final challenge compare (lines 1193-1202):

```c
/* sign.c:1194-1195 */ mld_H(c2, MLDSA_CTILDEBYTES, mu, MLDSA_CRHBYTES, buf, MLDSA_K * MLDSA_POLYW1_PACKEDBYTES, NULL, 0);
/* sign.c:1197 */ cmp = mld_ct_memcmp(c, c2, MLDSA_CTILDEBYTES);
...
/* sign.c:1202 */ ret = cmp == 0 ? 0 : MLD_ERR_FAIL;
```

  Full-length constant-time compare over `MLDSA_CTILDEBYTES` = **48 bytes
  for ML-DSA-65** (32 for 44, 64 for 87; `params.h:27,42,57`). No
  truncation, no early exit.
- **Verdict: no incomplete-comparison pattern in verification.**

### 3.5 Power/EM cases — rejected challenges (F-D2, Medium)

The four published ML-DSA power/EM results (Zhou et al. TCHES 2025(4)
pp. 817–847 — rejected-signature challenges; Zhao et al. ePrint 2026/056
— public-template attack on rejected + accepted trials, ~300 traces for
ML-DSA-44; "One (Noisy) Bit" J. Cryptology 2026 — single-bit randomness
leakage; ePrint 2024/512 — single-trace `z = y + c·s₁`) all need power/EM
traces or faults, not timing. This VM cannot measure power traces, so the
assessment here is code + literature only.

What the code does: every signing attempt computes the challenge from
`mu` and the packed `w1` (`sign.c:716-717`), declassifies the challenge
bytes as public (`sign.c:718-722`: "Leaking challenge_bytes does not reveal
any information about the secret key as H() is modelled as random oracle.
This also applies to challenges for rejected signatures"), samples the
challenge polynomial (`sign.c:723`), computes `z`, and **only then** runs
the norm checks that may discard the attempt (lines 727-777). A rejected
attempt's challenge, `z`-candidate computation, and `y` are therefore all
real, secret-dependent computations whose power/EM traces exist in the
device even though the signature is discarded — exactly the intermediate
values the Zhou et al. attack collects. The code's leakage model treats
rejection as safe for *timing* (the attempt count is the only timing
signal, and it is not returned), but the power/EM literature shows the
rejected attempt's *values* are the attack surface. The `y` values are
fresh per attempt (fresh `rhoprime` per call, nonce per attempt), which
raises the trace count versus a deterministic signer, but does not remove
the surface.

- Severity Medium: not exploitable by a remote timing observer; exploitable
  in principle by a local power/EM observer, which is outside this VM's
  measurement capability and outside the stated deployment model of a
  ledger node, but inside the threat model of any HSM / smartcard /
  co-located-tenant deployment.
- Remediation: no software-only fix in this codebase; deployment rule —
  do not run ML-DSA signing on devices where an adversary can capture
  power/EM traces without masking/countermeasure review; prefer hedged
  signing (already the default, §3.3); treat rejected-attempt count and
  timing as non-sensitive but rejected-attempt *traces* as sensitive.
- Measurement worker must test: timing only (abort-loop probe, F-D1). Power/
  EM confirmation is explicitly out of scope on this VM — record as such,
  do not claim a negative power result.

### 3.6 Zeroization, FIPS 204 §3.6.3 (F-D6, Negative-result)

`MLD_FREE` zeroizes (`mldsa/src/common.h:273-278`, `mld_zeroize` with the
same memset + asm-barrier shape as ML-KEM). Coverage verified:

| function | buffers zeroized |
|----------|------------------|
| `mld_sign_keypair` (`sign.c:422-425`) | `seed` |
| `mld_sign_keypair_internal` (`sign.c:380-385`) | `s2`, `s1`, `tr`, `inbuf`, `seedbuf`; `pk` zeroized on failure (1620-1623) |
| `mld_sign_signature_internal` (`sign.c:940-946`) | `s2hat`, `t0hat`, `s1hat`, `mat`, `seedbuf` (incl. `key`, `mu`, `rhoprime`) |
| `mld_attempt_signature_generation` (`sign.c:811-818`) | `t`, `cp`, `w0`, `w1tmp`, `z`, `y`, `challenge_bytes` — i.e. **rejected attempts are zeroized per attempt** |
| `mld_sign_signature` (`sign.c:1005-1007`) | `rnd`, `pre`; `sig` memset to 0 on error (993-1003) |
| `mld_sign_verify_internal` (`sign.c:1205-1214`) | `tmp`, `w1`, `mat`, `cp`, `z`, `c2`, `c`, `mu`, `buf`; stack `hpk` zeroized (line 1140) |
| `mld_sign_verify` (`sign.c:1241-1244`) | stack `pre` |
| `mld_poly_uniform_gamma1[_4x]` (`poly_kl.c:500-501,554-555`) | `buf`, `extseed` |

Note the keypair self-check (F-D8): after deriving `t0`/`t1`,
`sign.c:1601-1616` recomputes packed `t0` and `tr = H(pk)` and compares
both with `mld_ct_memcmp` (lines 1602-1606 for `t0`, 1610-1611 for `tr`),
combining the results through a value barrier (line 1612) before failing
(line 1616) and zeroizing `pk` (lines 1620-1623). This is a structural
self-check, not a sign/verify PCT.

### 3.7 Keypair PCT (F-D7, Low)

`mld_sign_keypair_internal` ends with `return mld_check_pct(pk, sk,
context)` (`sign.c:392-394`). The PCT body (`sign.c:66-133`) signs a test
message and verifies it — but only under `MLD_CONFIG_KEYGEN_PCT`, which is
commented out in the liboqs config (`integration/liboqs/config_c.h:204`,
`/* #define MLD_CONFIG_KEYGEN_PCT */`); the stub (`sign.c:134-146`)
returns 0. Same Low assessment as F-M6; the F-D8 self-check partially
compensates (it validates key derivation, not sign/verify consistency).

### 3.8 44 / 87 spot-check

`sign.c`, `poly.c`, `poly_kl.c`, `polyvec.c`, `packing.c`, `ct.c`, `ct.h`
are byte-identical between ML-DSA-65 and ML-DSA-44/87 (`diff -q`, no
differences); only `params.h` (`K`/`L`/`ETA`/`TAU`/`BETA`/`GAMMA1`/`GAMMA2`/
`CTILDEBYTES`) and the x86_64 native file selection differ. All ML-DSA-65
conclusions carry over, with the bound values from §3 intro substituted
per set. Note ML-DSA-44/87 use `ETA = 2`, so their `rej_eta` branch is
`t < 15` (`poly_kl.c:240-254`) rather than `t < 9`.

---

## 4. liboqs wrappers

### 4.1 ML-KEM wrapper (`src/kem/ml_kem/kem_ml_kem_768.c`)

`OQS_KEM_ml_kem_768_keypair / keypair_derand / encaps / encaps_derand /
decaps` (lines 76-...) are thin dispatchers: with `OQS_DIST_BUILD` they
select the x86_64 backend when the CPU has AVX2 + BMI2 + POPCNT
(e.g. `decaps`, lines 190-199), else the C backend; CUDA backends take
precedence when compiled in (lines 191-194). The dispatch condition is a
CPU-feature check, not secret-dependent (F-W3). Every function ends with
`return (OQS_STATUS) PQCP_MLKEM_NATIVE_MLKEM768_X86_64_<op>(...)` — a
verbatim cast of the backend `int` return (F-W1, see below). No wrapper
logic touches key material.

### 4.2 ML-DSA wrapper (`src/sig/ml_dsa/sig_ml_dsa_65.c`)

Same shape: `OQS_SIG_ml_dsa_65_keypair` (lines 51-75), `sign`
(lines 77-99), `verify` (lines 103-127), `sign_with_ctx_str` /
`verify_with_ctx_str` (lines 128-...) dispatch on AVX2+BMI2+POPCNT and cast
the backend `int` to `OQS_STATUS` verbatim. `sign` calls the randomized
(hedged) backend entry (§3.3); there is no deterministic-signing entry
point in the wrapper.

### 4.3 Error propagation (F-W1, Low; F-W2, Negative-result)

`OQS_STATUS` has exactly two ordinary values (`src/common/common.h:172-178`):
`OQS_ERROR = -1`, `OQS_SUCCESS = 0` (plus `OQS_EXTERNAL_LIB_ERROR_OPENSSL
= 50`). The backends return a wider set: `MLK_ERR_FAIL = -1`,
`MLK_ERR_OUT_OF_MEMORY = -2`, `MLK_ERR_RNG_FAIL = -3`
(`mlkem/src/common.h:272-278`); `MLD_ERR_FAIL = -1`,
`MLD_ERR_OUT_OF_MEMORY = -2`, `MLD_ERR_RNG_FAIL = -3`,
`MLD_ERR_SIGN_ATTEMPTS_EXHAUSTED = -4`
(`mldsa/src/common.h:308-319`). The wrappers cast these verbatim, so an
OOM failure surfaces as `OQS_STATUS` value −2 and a signing-attempts
exhaustion as −4 — values that are neither `OQS_SUCCESS` nor `OQS_ERROR`.

- Consequence: callers testing `rc != OQS_SUCCESS` (the dominant pattern
  in `tests/test_kem.c` and `tests/test_sig.c`, e.g. `test_kem.c:61,86,215,223`)
  handle these correctly as failures. Callers testing `rc == OQS_ERROR`
  would miss them — and the test harness itself contains such a test, for
  the expected-failure path when a seed length is zero
  (`tests/test_kem.c:207,239`: `if (rc != OQS_ERROR) { ... "succeeded but
  expected a failure" }`). In the current build those paths are not hit
  with −2/−3 returns (seed lengths are non-zero), so this is latent, not
  live.
- **F-W2: no backend failure is swallowed or converted to a success.**
  Every backend non-zero return propagates as a non-zero `OQS_STATUS`
  (never 0), and decapsulation's implicit rejection is by design a
  *success* return with a pseudorandom shared secret (`kem.c:422-431`),
  not an error path — the wrapper correctly does not reinterpret it.
  Keypair failure zeroizes outputs before returning (`kem.c:240-245`,
  `sign.c:1620-1623`); signing failure zeroes the signature and sets
  `siglen = 0` (`sign.c:933-938`).
- Remediation (F-W1): map in the wrappers — `return ret == 0 ? OQS_SUCCESS
  : OQS_ERROR;` — or document that `OQS_STATUS` returns from these
  algorithms may be −2/−3/−4. Regression test: a unit test calling the
  wrapper with a forced OOM (custom allocator) and asserting the result
  equals `OQS_ERROR`.

---

## 5. The four literature cases — verdicts for this code

| Case | Verdict for this code | Evidence |
|------|----------------------|----------|
| **1. KyberSlash** (secret-dependent division by q = 3329; TCHES 2025 pp. 209–234) | **Absent (patched)** in source for both Slash1 and Slash2. All compressors and Barrett reduction use multiply-by-magic-constant + shift; no division by q on any value. Binary-confirmed: 0 `div`/`idiv` in all ML-KEM symbol ranges (§7). | `compress.h:50-67,93-109,159-175,225-242,291-308`; `poly.c:75-106`; §2.1–2.2, §7. |
| **2. wolfSSL incomplete FO comparison** (CVE-2026-10097 AVX2, CVE-2026-6330 NEON; ePrint 2026/1682) | **Absent.** Single constant-time compare over the full ciphertext: 768 / 1,088 / 1,568 bytes for 512 / 768 / 1024. | `kem.c:422`; `verify.h:338-369`; §2.4. |
| **3. Clang `poly_frommsg` branch** (PQShield, 3 Jun 2024; Clang 15–18) | **Absent in source; GCC binary confirmed branch-free.** Mask-based select plus a value barrier around the bit-selection mask; the compiled GCC 13.3.0 `-O3` `poly_frommsg` has a single backward loop-edge `jne` and no message-bit branch (§7.2). The upstream reference fix (separate-file conditional move) is a different mechanism; this code relies on the barrier surviving optimisation — and for GCC 13.3.0 it does. Clang reproduction still open (no Clang on this machine). | `compress.c:679-708` (esp. lines 702-704); `verify.h:102-132,229-296`; §2.3, §7.2. |
| **4. ML-DSA power/EM cases** (Zhou et al. TCHES 2025(4) pp. 817–847; Zhao et al. ePrint 2026/056; J. Cryptology 2026 39:28; ePrint 2024/512) | **No pure-timing key recovery on record — confirmed as a negative result for this code** (abort-loop count not returned, §3.1). **Power/EM surface present by design:** rejected attempts compute real challenges and are discarded; the code declassifies rejected challenges as public. | `sign.c:716-723,880-929`; §3.1, §3.5. Power/EM cannot be measured on this VM. |

Additional cross-cutting note: the RUSTSEC-2026-0585 non-conformance
(PQClean skipping FIPS 203 §7.2/§7.3) does **not** reproduce in this code —
both checks are present and on the entry paths (§2.5).

---

## 6. What was not verified

- **Compiled-binary behaviour for Clang.** No Clang is installed; the
  Clang 15–18 `poly_frommsg` reproduction was not attempted and no
  Clang-compiled binary was inspected. The GCC binary check (§7) ran and
  passed; it does not transfer to Clang.
- **Clang-compiled binaries.** No Clang is installed; the Clang 15–18
  `poly_frommsg` reproduction was not attempted and no Clang disassembly
  was inspected.
- **Power/EM traces.** Not measurable on this VM; F-D2 rests on code
  reading plus the cited literature, not on a measurement.
- **AVX2 `poly_decompose` / `poly_use_hint` / `polyz_unpack` files**
  (ML-DSA x86_64, `native/x86_64/src/`): listed but not line-read
  (F-D11). They operate on `w1`/hint data (public in verification) and on
  `w0` (secret-derived) during signing; the measurement worker's timing
  probe should include them.
- **PQClean archived snapshot** (`PQClean` snapshot, HEAD `0586a824` (data/pqclean-check.log)): not
  reviewed here — out of scope for this file, which covers the two pinned
  liboqs backends. Its FIPS 203 §7.2/§7.3 gap is already documented in
  RUSTSEC-2026-0585.
- **CUDA backends** (`cupqc_` / `icicle_`): not reviewed; not built for
  this machine.
- **FIPS 202 (SHAKE) internals:** treated as constant-time primitives;
  the Keccak implementation was not line-reviewed.

---

## 7. Binary check

**Status: DONE — the build finished during this review (100%), and the
check ran against the built artefacts.** Toolchain: GCC 13.3.0,
`CMAKE_BUILD_TYPE=Release` (`-O3 -DNDEBUG`), `OQS_DIST_BUILD=ON`.
Artefacts: `liboqs/build/lib/liboqs.a` (38,720,322 bytes) and
`liboqs/build/tests/speed_kem` (4,043,768 bytes).

### 7.1 `div` / `idiv` counts in ML-KEM decaps / encaps symbol ranges

Method: `nm -S` on `speed_kem` for address ranges, `objdump -d` sliced
per symbol; cross-checked with per-symbol `objdump -d` on `liboqs.a`.
Symbol names are the namespaced backend symbols
(`PQCP_MLKEM_NATIVE_MLKEM768_{C,X86_64}_<op>`).

| symbol (ML-KEM-768) | backend | instructions | `div`/`idiv` |
|---|---|---|---|
| `dec` | x86_64 | 173 (archive slice) | **0** |
| `dec` | C | 185 | **0** |
| `enc` | x86_64 | 41 | **0** |
| `enc` | C | 40 | **0** |
| `enc_derand` | x86_64 | 70 | **0** |
| `keypair` | x86_64 | 38 | **0** |
| `indcpa_dec` | x86_64 / C | 89 / 89 | **0 / 0** |
| `indcpa_enc` | x86_64 / C | 179 / 180 | **0 / 0** |
| `poly_frommsg` | x86_64 / C | 80 / 80 | **0 / 0** |
| `poly_tomsg` | x86_64 / C | 596 / 1158 | **0 / 0** |
| `poly_compress_d4` | x86_64 / C | 3 / 253 | **0 / 0** |
| `poly_compress_d10` | x86_64 / C | 3 / 69 | **0 / 0** |
| `polyvec_compress_du` | x86_64 / C | 16 / 16 | **0 / 0** |

Range-wide check (all symbols whose names contain `MLKEM768`,
`MLKEM512`, `MLKEM1024`, `MLDSA65`, `MLDSA44`, or `MLDSA87` in
`speed_kem`, address ranges from `nm -S`): **0 `div`/`idiv` in every
range.** For reference, the whole `speed_kem` binary contains exactly
**5** `div` instructions, all inside the test-harness helpers `Decode`
(3) and `Decode.constprop.0` (2) at addresses `0x4c2ad, 0x4c4bd, 0x4c4f9,
0x4caf4, 0x4cb3d` — hex/base64 decoding of test vectors, not ML-KEM or
ML-DSA code. (The whole `liboqs.a` contains 31 `div`/`idiv`, all in
unrelated schemes — XMSS/SLH-DSA `wots_*`/`slh_*` and similar — none in
any ML-KEM or ML-DSA symbol.)

**Result: no division instruction exists anywhere in the compiled ML-KEM
or ML-DSA code paths in this build.** The KyberSlash source verdicts
(F-M1, F-M2) are therefore confirmed at the binary level for GCC 13.3.0
`-O3`. (Note the instruction counts above count disassembly lines in the
archive slices; the x86_64 `poly_compress_d4/d10` 3-instruction bodies are
thunks into the AVX2 assembly, whose own text contains no `div` — §2.8.)

### 7.2 Conditional branches in compiled `poly_frommsg`

Both variants (`PQCP_MLKEM_NATIVE_MLKEM768_C_poly_frommsg` at `0x23ea20`,
size `0x101`; `..._X86_64_poly_frommsg` at `0x2423d0`, size `0x101`) contain
exactly **one** conditional jump each:

- C: `jne 23ea68` at `0x23eb16` (back-edge to `+0x48`).
- x86_64: `jne 242418` at `0x2424c6` (back-edge to `+0x48`).

Both are backward jumps to the loop head — the counted loop over the 32
message bytes (GCC fully unrolled the inner 8-bit loop; the outer loop
remains). The bit selection itself is branch-free arithmetic
(`movzbl` / `and (%rcx),%al` / `and $0x681,%ax`, where `0x681` = 1665 =
`MLKEM_Q_HALF`). **No branch on any message bit exists in the compiled
`poly_frommsg` in this build.** The Clang-shape failure was not
reproduced (no Clang on this machine); re-run this disassembly check on
every toolchain change.

### 7.3 What to re-run

On any rebuild with a different compiler, version, or optimisation level,
re-run the §7.1 range counts and the §7.2 `poly_frommsg` disassembly and
record the toolchain next to the counts; a count without the toolchain
that produced it is not a result. A non-zero `div`/`idiv` count inside any
ML-KEM/ML-DSA symbol range would be a finding in itself, to be traced to
the exact instruction and the source line that produced it.

---

## 8. Measurement-worker handoff (named tests)

| Test | What it confirms | Target |
|------|------------------|--------|
| KyberSlash1 timing probe | decaps timing vs secret-dependent division inputs | F-M1 |
| KyberSlash2 timing probe | encaps / decaps re-encryption timing vs secret inputs | F-M2 |
| Binary `div`/`idiv` count | Done in §7 (0 in all ML-KEM/ML-DSA ranges, GCC 13.3.0 `-O3`); re-run on any toolchain change | F-M1, F-M2 |
| Clang `poly_frommsg` reproduction | branch in Clang 15–18 `-O2`/`-Os` build; time decapsulation | F-M3 |
| FO tail-mutation sweep | flip each ciphertext byte incl. last 32; expect implicit rejection every time | F-M4 |
| Input-check battery | Wycheproof-style invalid ek/dk vs §7.2/§7.3 | F-M5 |
| ML-DSA abort-loop timing probe | signing time vs attempt count, N ≥ 1000, stated detection threshold | F-D1 |
| ML-DSA rejection-acceptance timing | keygen/sign timing vs `rej_eta` acceptance pattern | F-D3 |
| OQS_STATUS mapping test | forced-OOM wrapper call returns exactly `OQS_ERROR` | F-W1 |
| PCT enablement check | build with `MLK_CONFIG_KEYGEN_PCT` / `MLD_CONFIG_KEYGEN_PCT` defined; keypair still passes KATs | F-M6, F-D7 |

## 9. Sources

- liboqs 0.16.0 tree at `the liboqs 0.16.0 tree` (tag commit `5a1a854b`), files cited
  inline throughout.
- Research report §4 and §6 item 8,
  docs/SOURCES.md (KyberSlash dates and key-recovery figures; wolfSSL CVE-2026-10097 /
  CVE-2026-6330; PQShield Clang `poly_frommsg` disclosure 3 Jun 2024;
  ML-DSA power/EM cases; RUSTSEC-2026-0585).
- FIPS 203 (ML-KEM) §3.3, §7.2, §7.3, Table 3; FIPS 204 (ML-DSA) §3.6.3,
  Table 1, Appendix C — as cited in the report.
