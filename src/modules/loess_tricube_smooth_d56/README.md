# Tricube-Weighted Local Linear LOESS Smoother (`loess_tricube_smooth_d56`)

> Category: **Nonparametric Regression** | Language: **R (Base 4.x)**

## Overview

Fits local weighted degree-1 polynomial regressions around target abscissae using Cleveland's tricube kernel weights (1 - |u|^3)^3.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) per query evaluation` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Exact collinear linear observations reproduce exact linear values with zero bias.

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
