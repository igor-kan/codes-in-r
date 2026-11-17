# Huber IRLS Robust Regression with MAD Scale Update (`huber_irls_m_estimator`)

> Category: **Robust Statistics** | Language: **R (Base 4.x)**

## Overview

Fits Huber M-estimator linear regression via Iteratively Reweighted Least Squares with normalized MAD scale initialization.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(Iters * N * P^2)` |
| **Space Complexity** | `O(N * P)` |

## Mathematical & Safety Invariants

- Robust slope resists 20% gross y-outliers relative to OLS.

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
