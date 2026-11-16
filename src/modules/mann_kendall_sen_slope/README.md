# Mann-Kendall Monotonic Trend Test & Theil-Sen Median Slope (`mann_kendall_sen_slope`)

> Category: **Nonparametric Time-Series Analysis** | Language: **R (Base 4.x)**

## Overview

Computes the tie-adjusted Mann-Kendall S-statistic, asymptotic variance with tie group correction, continuity-corrected Z-score, and robust median Theil-Sen slope & intercept.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) pairwise sign & slope evaluation` |
| **Space Complexity** | `O(N^2) pairwise slopes or O(1) S-statistic` |

## Mathematical & Safety Invariants

- Strictly increasing input yields S == N*(N-1)/2 and Kendall tau == +1.0.
- Adding any constant c to all observations leaves S and Sen slope invariant while shifting intercept by c.

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
