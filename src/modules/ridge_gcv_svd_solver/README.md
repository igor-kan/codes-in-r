# SVD-Based Ridge Regression & Exact GCV Penalty Selector (`ridge_gcv_svd_solver`)

> Category: **Regularized Regression & Linear Algebra** | Language: **R (Base 4.x)**

## Overview

Computes full L2 Ridge regularization coefficient paths across lambda grids from a single SVD decomposition U D V^T with closed-form effective degrees of freedom df(lambda) and exact Generalized Cross-Validation (GCV) selection.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(min(N,P) * N * P + Grid * min(N,P))` |
| **Space Complexity** | `O(N * P)` |

## Mathematical & Safety Invariants

- For lambda == 0 on full-rank centered X, coefficients equal exact OLS lm.fit estimate.
- Effective degrees of freedom df(lambda) strictly decreases monotonically in lambda and stays inside (0, min(N,P)].

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
