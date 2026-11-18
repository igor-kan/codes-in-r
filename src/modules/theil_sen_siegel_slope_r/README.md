# Siegel Repeated Median & Theil-Sen 50%-Breakdown Slope Estimator (`theil_sen_siegel_slope_r`)

> Category: **Robust Regression** | Language: **R (Base 4.x)**

## Overview

Computes Siegel's 50% breakdown point repeated-median slope med_i med_{j!=i} (y_j - y_i)/(x_j - x_i) alongside the Theil-Sen pairwise median slope.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) nested pairwise median-of-medians slope & intercept` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Recovers exact true slope and intercept even when 40% of points are gross outliers.

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
