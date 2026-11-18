# Nelson-Aalen Nonparametric Cumulative Hazard &Aalen Variance (`nelson_aalen_cumhazard_r`)

> Category: **Survival Analysis** | Language: **R (Base 4.x)**

## Overview

Estimates the nonparametric cumulative hazard H(t) = sum_{t_i <= t} d_i / Y_i and Aalen variance sum d_i / Y_i^2 over right-censored survival data.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) event time sorting & risk-set reciprocal summation` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Cumulative hazard is non-decreasing and exp(-H(t)) approximates Kaplan-Meier survival.

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
