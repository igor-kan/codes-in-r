# Sample Autocorrelation & Durbin-Levinson Yule-Walker PACF (`arma_acf_pacf_yule`)

> Category: **Time Series** | Language: **R (Base 4.x)**

## Overview

Computes sample ACF lags and solves symmetric Toeplitz Yule-Walker equations via O(L^2) Durbin-Levinson recursion for exact Partial Autocorrelation (PACF).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * L + L^2)` |
| **Space Complexity** | `O(L^2)` |

## Mathematical & Safety Invariants

- PACF matches base pacf(..., plot=FALSE) across lags 1..L within 1e-11.

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
