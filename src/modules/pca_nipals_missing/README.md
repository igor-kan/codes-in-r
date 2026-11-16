# NIPALS Principal Component Analysis Tolerating Missing NA Entries (`pca_nipals_missing`)

> Category: **Dimensionality Reduction & Missing Data** | Language: **R (Base 4.x)**

## Overview

Extracts top-K orthogonal principal component scores and unit-norm loadings via Nonlinear Iterative Partial Least Squares (NIPALS) naturally handling arbitrary missing NA entries via masked inner products.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K * iters * N * P)` |
| **Space Complexity** | `O(N * K + P * K)` |

## Mathematical & Safety Invariants

- Extracted loading vectors satisfy ||p_k||_2 == 1.0 and p_i^T p_j == 0 on complete data.
- Deflation variance accounted equals PCA eigenvalues matching base prcomp on complete matrices.

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
