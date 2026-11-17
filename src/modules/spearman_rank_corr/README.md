# Exact Tie-Aware Average Ranking, Spearman Rho & Kendall Tau-b (`spearman_rank_corr`)

> Category: **Nonparametric Statistics** | Language: **R (Base 4.x)**

## Overview

Implements tie-averaged mid-rank assignment, exact Pearson correlation on ranks (Spearman rho), and tie-corrected Kendall tau-b concordance without external packages.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) tie-averaged ranking, O(N^2) Kendall tau-b concordance` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Spearman rho and Kendall tau-b strictly lie in [-1, 1] and equal Base-R cor(..., method='spearman') / cor(..., method='kendall').

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
