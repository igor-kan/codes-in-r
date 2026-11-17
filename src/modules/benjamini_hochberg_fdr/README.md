# Multiple-Testing p-Value Adjusters (Benjamini-Hochberg & Holm) (`benjamini_hochberg_fdr`)

> Category: **Multiple Testing** | Language: **R (Base 4.x)**

## Overview

Computes Benjamini-Hochberg false discovery rate (BH/FDR) and Holm-Bonferroni family-wise adjusted p-values via order-statistic cummin/cummax step-up/down sweeps.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(M log M) step-up monotonicity enforcement` |
| **Space Complexity** | `O(M)` |

## Mathematical & Safety Invariants

- Adjusted p-values preserve input ordering, lie in [0, 1], and match Base-R p.adjust(..., method='BH'/'holm').

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
