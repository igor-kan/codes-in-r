# Exact Mann-Whitney Two-Sample Rank-Sum U Statistic (`mann_whitney_u_stat_d56`)

> Category: **Nonparametric Statistics** | Language: **R (Base 4.x)**

## Overview

Computes exact tie-averaged Wilcoxon-Mann-Whitney U1 and U2 rank-sum statistics satisfying the identity U1 + U2 == n1 * n2 cleanly.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O((N1 + N2) log(N1 + N2))` |
| **Space Complexity** | `O(N1 + N2)` |

## Mathematical & Safety Invariants

- For any two finite vectors x, y, U1 + U2 equals length(x) * length(y).

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
