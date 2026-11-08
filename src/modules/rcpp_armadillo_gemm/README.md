# Zero-Copy RcppArmadillo Matrix Multiplication Engine (`rcpp_armadillo_gemm`)

## Overview

The `rcpp_armadillo_gemm` module provides high-performance, mathematically rigorous operations for `codes-in-r`.

### Component Artifacts

- **Type Definitions**: [`types.r`](./types.r)
- **Computational Core**: [`core.r`](./core.r)
- **Deterministic Unit Tests**: [`tests.r`](./tests.r)
- **SIMD Optimizations**: [`perf_simd.r`](./perf_simd.r)
- **Microbenchmarks**: [`benchmarks.r`](./benchmarks.r)
- **Boundary Validation**: [`boundary.r`](./boundary.r)
- **Property Fuzzing**: [`fuzz_invariants.r`](./fuzz_invariants.r)

### Computational Invariant

$$f(x) = x \left(1 + \frac{1}{2}x - \frac{1}{8}x^2\right)$$

Maintained under strict continuous integration, sanitizer checks, and memory bounds verification.
