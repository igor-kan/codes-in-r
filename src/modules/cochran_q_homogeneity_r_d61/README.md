# Cochran Q Test for Homogeneity of Matched Binary Treatments (`cochran_q_homogeneity_r_d61`)

> Category: **Categorical Tests** | Language: **R (Base 4.x)**

## Overview

Evaluates Cochran's Q statistic for K matched binary treatments across N blocks using treatment totals, block totals, and the grand total.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N K) block and treatment marginal accumulation` |
| **Space Complexity** | `O(N K)` |

## Mathematical & Safety Invariants

- Q is non-negative, has K - 1 degrees of freedom, and vanishes when all treatments agree.

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
