# Cyclic Coordinate Descent Lasso (`coordinate_lasso_cd`)

> Category: **Regularized Regression** | Language: **R (Base 4.x)**

## Overview

L1-penalized linear regression via cyclic coordinate descent with exact soft-thresholding and KKT subgradient optimality verification.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(iters * n * p)` |
| **Space Complexity** | `O(n * p)` |

## Mathematical & Safety Invariants

- every zero coefficient satisfies |X_j^T r| / n <= lambda + 1e-6
- every non-zero coefficient satisfies X_j^T r / n == lambda * sign(beta_j)
- objective 0.5*||r||^2/n + lambda*||beta||_1 monotonically non-increasing

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
