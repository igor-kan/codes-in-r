# Two-Sample Kolmogorov-Smirnov Supremum ECDF Discrepancy (`ecdf_ks_distance_d59`)

> Category: **Distribution Testing** | Language: **R (Base 4.x)**

## Overview

Computes the supremum vertical separation max |F_n1(t) - G_n2(t)| between two empirical cumulative distribution functions cleanly.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O((N1 + N2) log(N1 + N2))` |
| **Space Complexity** | `O(N1 + N2)` |

## Mathematical & Safety Invariants

- KS statistic vanishes cleanly on identical multisets and stays bounded inside [0, 1].

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
