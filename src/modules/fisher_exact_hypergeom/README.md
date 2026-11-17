# Exact Two-Sided 2x2 Contingency Fisher Exact Test (`fisher_exact_hypergeom`)

> Category: **Discrete Inference** | Language: **R (Base 4.x)**

## Overview

Enumerates all feasible hypergeometric table probabilities with fixed marginals and sums tables with probability <= p_observed for exact two-sided Fisher significance.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(min(row, col)) hypergeometric support sum` |
| **Space Complexity** | `O(K)` |

## Mathematical & Safety Invariants

- Matches Base-R fisher.test(mat)$p.value to within 1e-12.

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
