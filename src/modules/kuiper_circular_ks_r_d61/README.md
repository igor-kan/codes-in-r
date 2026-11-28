# Kuiper Rotation-Invariant Circular Goodness-of-Fit Statistic (`kuiper_circular_ks_r_d61`)

> Category: **Nonparametric Tests** | Language: **R (Base 4.x)**

## Overview

Computes Kuiper's V = D+ + D-, summing the largest positive and negative empirical CDF gaps so the statistic is suited to circular and periodic distributions.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) sorted empirical CDF deviation accumulation` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- V equals D+ + D-, satisfies 0 <= V <= 2, and dominates the ordinary KS distance.

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
