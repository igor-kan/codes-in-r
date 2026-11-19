# Tie-Corrected Mann-Whitney Two-Sample Rank-Sum U Statistic (`mann_whitney_u_wilcox_r`)

> Category: **Nonparametric Tests** | Language: **R (Base 4.x)**

## Overview

Computes the exact two-sample Wilcoxon-Mann-Whitney U statistic using tie-averaged mid-ranks and tie-corrected normal approximation z-score.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) pooled mid-rank assignment & continuity/tie variance` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Matches Base-R wilcox.test(x, y)$statistic cleanly.

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
