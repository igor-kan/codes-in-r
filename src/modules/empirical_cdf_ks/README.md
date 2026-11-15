# Empirical CDF & Two-Sample Kolmogorov-Smirnov (`empirical_cdf_ks`)

> Category: **Nonparametric Statistics** | Language: **R (Base 4.x)**

## Overview

Exact right-continuous empirical cumulative distribution function and two-sample Kolmogorov-Smirnov D supremum statistic with asymptotic series p-value.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(n log n + m log m)` |
| **Space Complexity** | `O(n + m)` |

## Mathematical & Safety Invariants

- ECDF values lie monotonically in [0, 1] with lim_{x->inf} F_n(x) == 1
- two-sample D statistic is symmetric D(x, y) == D(y, x) and in [0, 1]
- D agrees strictly with stats::ks.test(x, y)$statistic

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
