# Weighted Pool-Adjacent-Violators Isotonic Regression (`isotonic_pava_reg`)

> Category: **Nonparametric Shape-Constrained** | Language: **R (Base 4.x)**

## Overview

Linear-time Pool-Adjacent-Violators Algorithm (PAVA) solver for weighted monotonic non-decreasing least-squares regression matching stats::isoreg.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(n)` |
| **Space Complexity** | `O(n)` |

## Mathematical & Safety Invariants

- output fitted values satisfy y_hat[i] <= y_hat[i + 1] everywhere
- weighted sum of fitted values equals weighted sum of observations
- unweighted result strictly agrees with stats::isoreg(y)$yf

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
