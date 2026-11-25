# Mann-Whitney U Two-Sample Rank-Sum Statistic & Concordance AUC (`mann_whitney_u_r_d60`)

> Category: **Nonparametric Statistics** | Language: **R (Base 4.x)**

## Overview

Computes tie-corrected Mann-Whitney U_1, U_2 statistics and probability of superiority AUC = U_1 / (n_1 * n_2) purely in Base R.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O((N + M) log(N + M)) pooled average-rank assignment` |
| **Space Complexity** | `O(N + M)` |

## Mathematical & Safety Invariants

- Satisfies exact conservation U_1 + U_2 == n_1 * n_2 and 0 <= AUC <= 1.

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
