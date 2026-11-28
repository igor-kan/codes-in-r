# Friedman Rank Test for Randomized Complete Block Designs (`friedman_rank_test_r_d61`)

> Category: **Nonparametric Tests** | Language: **R (Base 4.x)**

## Overview

Ranks each block separately and tests equality of K treatment effects across N blocks using the Friedman chi-square statistic with the standard tie correction.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N K log K) within-block ranking plus tie-corrected chi-square statistic` |
| **Space Complexity** | `O(N K)` |

## Mathematical & Safety Invariants

- Matches stats::friedman.test statistics and p-values with or without ties and is invariant under strictly increasing transformations of the responses.

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
