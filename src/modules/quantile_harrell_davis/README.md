# Harrell-Davis Smooth Beta-Kernel Quantile & IQR Estimator (`quantile_harrell_davis`)

> Category: **Nonparametric Estimation** | Language: **R (Base 4.x)**

## Overview

Estimates distribution quantiles as weighted linear combinations of order statistics with Beta((n+1)p, (n+1)(1-p)) density increments via Base-R pbeta.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) ordered Beta CDF difference weights` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Harrell-Davis weights are strictly positive and sum exactly to 1.0.
- Estimate lies inside [min(x), max(x)] monotonically across probabilities.

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
