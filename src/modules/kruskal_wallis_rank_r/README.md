# Tie-Adjusted Kruskal-Wallis K-Sample One-Way ANOVA on Ranks (`kruskal_wallis_rank_r`)

> Category: **Nonparametric Tests** | Language: **R (Base 4.x)**

## Overview

Computes the nonparametric Kruskal-Wallis H statistic comparing K independent sample distributions via average rank totals and cubic tie-correction.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) mid-rank ANOVA sum of squares with tie divisor` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Matches Base-R kruskal.test(values, groups)$statistic to machine precision.

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
