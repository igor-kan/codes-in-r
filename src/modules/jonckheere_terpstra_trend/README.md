# Nonparametric Jonckheere-Terpstra Ordered Group Trend Statistic (`jonckheere_terpstra_trend`)

> Category: **Nonparametric Tests** | Language: **R (Base 4.x)**

## Overview

Computes the Jonckheere-Terpstra U statistic counting concordant pairs (y_{ia} < y_{jb}) across K a priori ordered treatment groups g_1 < g_2 < ... < g_K.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) pairwise Mann-Whitney U accumulation across ordered groups` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Strictly increasing non-overlapping groups achieve maximum possible JT statistic.

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
