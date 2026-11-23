# Regression Projection Hat-Matrix Leverage Diagnostics (`ols_leverage_hat_d58`)

> Category: **Linear Model Diagnostics** | Language: **R (Base 4.x)**

## Overview

Computes exact orthogonal projection diagonal leverage scores h_ii = x_i^T (X^T X)^-1 x_i bounded in [0, 1] and summing to rank P.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * P^2)` |
| **Space Complexity** | `O(N * P)` |

## Mathematical & Safety Invariants

- Sum of hat diagonals equals ncol(X) while every leverage lies inside [0, 1].

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
