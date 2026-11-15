# Binomial IRLS Logistic Regression (`irls_logistic_fit`)

> Category: **Generalized Linear Models** | Language: **R (Base 4.x)**

## Overview

Iteratively Reweighted Least Squares (Fisher scoring) solver for binomial logistic regression with deviance and Fisher score gradient checks.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(iters * n * p^2)` |
| **Space Complexity** | `O(n * p + p^2)` |

## Mathematical & Safety Invariants

- fitted probabilities lie strictly inside (0, 1)
- first-order score equations ||X^T (y - mu)||_inf <= 1e-8 upon convergence
- estimated coefficients closely match base stats::glm(..., binomial())

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
