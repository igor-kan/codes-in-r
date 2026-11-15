# Symmetric Lanczos Tridiagonalization (`lanczos_tridiag_sym`)

> Category: **Spectral Linear Algebra** | Language: **R (Base 4.x)**

## Overview

Symmetric Krylov Lanczos projection with full reorthogonalization constructing tridiagonal T_k = V_k^T A V_k and extracting Ritz eigenpairs.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(k * n^2)` |
| **Space Complexity** | `O(k * n)` |

## Mathematical & Safety Invariants

- Lanczos basis V_k satisfies ||V_k^T V_k - I_k||_F <= 1e-11
- tridiagonal Rayleigh projection V_k^T A V_k matches T_k
- extreme Ritz eigenvalues converge monotonically toward A bounds

## Module Architecture

| File | Lifecycle Role |
| :--- | :--- |
| `types.R` | Stage 01 |
| `errors.R` | Stage 02 |
| `interface.R` | Stage 03 |
| `core.R` | Stage 04 |
| `validation.R` | Stage 05 |
| `fast_path.R` | Stage 06 |
| `concurrency.R` | Stage 07 |
| `invariants.R` | Stage 08 |
| `unit_tests.R` | Stage 09 |
| `property_tests.R` | Stage 10 |
| `benchmark.R` | Stage 11 |
| `README.md` | Stage 12 |

## Verification & Execution Example

```text
Rscript unit_tests.R && Rscript property_tests.R && Rscript benchmark.R
```

---
© 2026 Igor Kan
