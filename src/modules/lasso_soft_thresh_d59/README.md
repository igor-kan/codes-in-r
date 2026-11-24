# Coordinate Descent Soft-Thresholding Shrinkage Operator (`lasso_soft_thresh_d59`)

> Category: **Sparse Regression** | Language: **R (Base 4.x)**

## Overview

Applies prox L1 soft-thresholding S(z, lam) = sign(z) * max(0, |z| - lam) crushing sub-threshold entries identically to zero.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(P)` |
| **Space Complexity** | `O(P)` |

## Mathematical & Safety Invariants

- Result equals 0 whenever |z| <= lambda and contracts strictly by lambda elsewhere.

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
