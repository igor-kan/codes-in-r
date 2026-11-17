# QR-Solved Weighted Least Squares & Sandwich HC0 Robust SE (`weighted_least_squares_qr`)

> Category: **Linear Models** | Language: **R (Base 4.x)**

## Overview

Solves heteroskedastic WLS regressions via weighted QR factorization and computes White HC0 heteroskedasticity-consistent sandwich standard errors.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * P^2)` |
| **Space Complexity** | `O(N * P)` |

## Mathematical & Safety Invariants

- Fitted coefficients match base lm(..., weights=w) within 1e-11.

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
