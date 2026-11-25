# Quenouille Leave-One-Out Jackknife Bias & Variance Estimator (`jackknife_bias_r_d60`)

> Category: **Resampling Methods** | Language: **R (Base 4.x)**

## Overview

Computes leave-one-out jackknife bias correction (n - 1) * (theta_bar - theta_hat) and Tukey standard error without Monte Carlo variance.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * cost(stat)) leave-one-out pseudo-value calculation` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Exact jackknife SE matches classical s / sqrt(n) for sample mean.

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
