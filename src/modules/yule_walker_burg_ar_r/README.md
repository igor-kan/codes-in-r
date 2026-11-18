# Yule-Walker Autocovariance Toeplitz AR(p) Parameter Fitter (`yule_walker_burg_ar_r`)

> Category: **Time Series** | Language: **R (Base 4.x)**

## Overview

Estimates autoregressive AR(p) coefficients and innovation variance by solving the sample autocovariance Yule-Walker Toeplitz equations.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * P + P^3) sample autocovariance & Yule-Walker solve` |
| **Space Complexity** | `O(N + P^2)` |

## Mathematical & Safety Invariants

- AR(1) estimate equals lag-1 sample autocorrelation r_1.

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
