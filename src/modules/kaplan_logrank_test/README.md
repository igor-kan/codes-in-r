# Two-Sample Mantel-Cox Log-Rank Survival Test (`kaplan_logrank_test`)

> Category: **Survival Analysis** | Language: **R (Base 4.x)**

## Overview

Evaluates observed minus expected events and hypergeometric Mantel-Haenszel variance across unique failure times to compute exact chi-square log-rank statistics.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) event-time pooling` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Chi-square log-rank statistic is non-negative and finite.

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
