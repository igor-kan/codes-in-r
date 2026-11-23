# Kendall Tau-a Concordant vs Discordant Pair Rank Stat (`kendall_tau_a_d58`)

> Category: **Rank Association** | Language: **R (Base 4.x)**

## Overview

Counts exact concordant vs discordant observation pairs across all N*(N-1)/2 pairs to compute bounded Kendall tau-a association.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2)` |
| **Space Complexity** | `O(1)` |

## Mathematical & Safety Invariants

- Strictly increasing sequences yield tau == +1.0 cleanly.

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
