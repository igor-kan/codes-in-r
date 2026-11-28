# Dunn Pairwise Rank-Sum Post-Hoc Comparisons with Tie Correction (`dunn_pairwise_posthoc_r_d61`)

> Category: **Nonparametric Tests** | Language: **R (Base 4.x)**

## Overview

Performs Dunn's post-hoc pairwise comparisons after a Kruskal-Wallis analysis using global mid-ranks, tie-corrected variance, and two-sided normal p-values.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N + K^2) global ranking and pairwise normal approximations` |
| **Space Complexity** | `O(K^2)` |

## Mathematical & Safety Invariants

- Comparison matrix is symmetric, has unit diagonal, and is invariant under positive affine rescaling.

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
