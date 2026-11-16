# Tie-Adjusted Mann-Whitney Wilcoxon Rank-Sum & Hodges-Lehmann Shift (`wilcoxon_ranksum_exact`)

> Category: **Nonparametric Hypothesis Testing** | Language: **R (Base 4.x)**

## Overview

Computes average-rank Wilcoxon rank-sum W and Mann-Whitney U statistics with tie variance correction, continuity Z-test, and robust Hodges-Lehmann pairwise median location shift matching stats::wilcox.test.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O((N1 + N2) log(N1 + N2) + N1 * N2)` |
| **Space Complexity** | `O(N1 * N2)` |

## Mathematical & Safety Invariants

- Mann-Whitney U1 + U2 equals exact n1 * n2 across arbitrary continuous or tied samples.
- Estimated Hodges-Lehmann shift and p-value align closely with base stats::wilcox.test.

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
