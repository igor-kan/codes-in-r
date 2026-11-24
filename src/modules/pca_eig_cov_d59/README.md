# Sample Covariance Eigen-PCA & Explained Variance Ratio (`pca_eig_cov_d59`)

> Category: **Dimensionality Reduction** | Language: **R (Base 4.x)**

## Overview

Centers feature matrices, diagonalizes sample covariance matrices cleanly, and returns descending principal eigenvalues and explained variance ratios.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(P^3 + N * P^2)` |
| **Space Complexity** | `O(P^2)` |

## Mathematical & Safety Invariants

- Explained variance fractions strictly remain non-negative and sum to 1.0.

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
