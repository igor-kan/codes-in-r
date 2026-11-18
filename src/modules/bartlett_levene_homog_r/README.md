# Brown-Forsythe Median-Centered Levene & Bartlett Homoscedasticity Tests (`bartlett_levene_homog_r`)

> Category: **Variance Homogeneity** | Language: **R (Base 4.x)**

## Overview

Computes the robust Brown-Forsythe (median-centered Levene) one-way F-statistic on |y_{ij} - median(y_i)| alongside Bartlett's normal-theory chi-squared statistic.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) group-median absolute deviation ANOVA F-statistic` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Bartlett statistic matches Base-R bartlett.test(values ~ groups)$statistic.

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
