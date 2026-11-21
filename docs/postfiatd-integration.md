# Ledger integration context — postfiatd has no lattice code

[FAKTA] The engine benchmarked in this pack is **proposed** for a
post-quantum ledger, not used by one. The ledger codebase inspected for
this pack (postfiatd, HEAD `24c5487d9bfc99171380960e4eeb1543a724cfae`,
"Update AmendmentTable boundary tests for the 67% majority threshold")
contains **zero lattice code**: a grep over the tree for
ml-kem / mlkem / kyber / dilithium / ml-dsa / mldsa / lattice /
post-quantum / pqclean / liboqs returned zero matches. Vendored code
under `external/` is `ed25519-donna`, `secp256k1`, and `antithesis-sdk`
only.

## What integration would require

[FAKTA] `conanfile.py` pins `openssl/1.1.1w` in its `requires` list
(alongside `grpc/1.50.1`, `libarchive/3.8.1`, `nudb/2.0.9`,
`soci/4.0.3`, `zlib/1.3.1`; `requirements()` adds `boost/1.83.0`,
`date/3.0.4`, `lz4/1.10.0`, `protobuf/3.21.12`, `sqlite3/3.49.1`,
`xxhash/0.8.3`, `rocksdb/10.0.1` when enabled, `doctest/2.4.11` as test
requirement). `CMakeLists.txt:88` requires
`find_package(OpenSSL 1.1.1 REQUIRED)`; `CMakeLists.txt:16` sets C++20.
No `conan.lock` or other lockfile is present in the checkout.

[FAKTA] OpenSSL 3.5.0, released 8 April 2025, is the first OpenSSL
release with native ML-KEM / ML-DSA / SLH-DSA support (OpenSSL 3.5
Series Release Notes: "Support for PQC algorithms (ML-KEM, ML-DSA and
SLH-DSA)").

[ANALISIS] The build pins OpenSSL 1.1.1w, a release line that predates
native ML-KEM support by more than two major versions; no pinned
dependency in the manifests is a lattice-capable library, and none of
the other pinned dependencies (gRPC, Boost, SOCI, RocksDB, protobuf,
SQLite3, xxHash, lz4, libarchive, nudb, zlib, doctest) is a
post-quantum cryptography provider. Any ML-KEM use through OpenSSL
would therefore require a dependency upgrade to OpenSSL ≥ 3.5, not a
configuration change. The fully resolved transitive dependency tree was
not inspected (NV12) — that requires running the Conan install/graph
resolution — so absence of lattice support in transitive dependencies is
stated from the manifests, not from a resolved tree.

## Suggested integration path (for maintainers)

1. **Dependency first:** upgrade the OpenSSL pin to ≥ 3.5 (or vendor
   liboqs 0.16.0 directly, as this pack does). Do not backport
   mlkem-native into the 1.1.1w tree.
2. **Parameter set:** ML-KEM-768 (NIST's recommended default, FIPS 203
   §8; category 3) for key encapsulation; ML-DSA-65 (category 3) for
   signatures. Measured here: ML-KEM-768 decaps median 18.57 us,
   ML-DSA-65 sign median 129.05 us, verify 48.08 us.
3. **Apply the remediation guidance** in docs/remediation.md before
   deployment: define `MLK_CONFIG_KEYGEN_PCT` (F-M6/F-D7), audit any
   custom RNG (F-M7/F-D4), map backend error codes in the wrapper
   (F-M8/F-W1), and treat ML-DSA signing as power/EM-sensitive where
   applicable (F-D2).
4. **Do not use the PQClean snapshot:** it is archived and
   unmaintained, and it accepts non-reduced encapsulation keys 20/20
   (data/pqclean-check.log) — the RUSTSEC-2026-0585 shape.
