# Modified Gram-Schmidt Thin QR Solver (`gram_schmidt_qr_r`)

> Category: **Numerical Linear Algebra** | Language: **R (Base 4.x)**

## Overview

Modified Gram-Schmidt thin QR decomposition with two-pass reorthogonalization and upper-triangular linear least squares back-substitution.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(m * n^2)` |
| **Space Complexity** | `O(m * n)` |

## Mathematical & Safety Invariants

- ||Q^T Q - I_n||_F <= 1e-11
- ||A - Q R||_F <= 1e-11
- normal equations residual X^T (y - X beta_hat) == 0

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
