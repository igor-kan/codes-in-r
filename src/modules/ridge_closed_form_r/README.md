# SVD-Stabilized L2 Tikhonov Ridge Regression & Effective Degrees Estimator (`ridge_closed_form_r`)

> Category: **Regularized Regression** | Language: **R (Base 4.x)**

## Overview

Solves L2-penalized least squares (X'X + lambda*I)^-1 X'y stably via singular value decomposition X = U D V' and computes effective degrees of freedom sum d_j^2 / (d_j^2 + lambda).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * P^2) SVD spectral damping across ridge penalty lambda` |
| **Space Complexity** | `O(P^2)` |

## Mathematical & Safety Invariants

- When lambda = 0 on full-rank design X, coefficients match OLS qr.coef(qr(X), y) cleanly.

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
