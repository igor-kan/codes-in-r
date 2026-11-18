# OLS Residual Durbin-Watson Lag-1 Serial Correlation Statistic (`durbin_watson_autocorr_r`)

> Category: **Econometric Diagnostics** | Language: **R (Base 4.x)**

## Overview

Computes OLS regression residuals e = y - X*beta_hat via QR decomposition and evaluates the Durbin-Watson statistic d = sum((e_t - e_{t-1})^2) / sum(e_t^2).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * P^2) QR OLS projection + O(N) first-difference ratio` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Durbin-Watson d strictly lies in [0, 4] and equals ~2*(1 - r_1).

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
