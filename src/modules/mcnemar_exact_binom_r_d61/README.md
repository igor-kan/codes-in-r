# Exact Conditional Binomial McNemar Paired-Proportion Test (`mcnemar_exact_binom_r_d61`)

> Category: **Categorical Tests** | Language: **R (Base 4.x)**

## Overview

Tests symmetry of paired binary outcomes from the discordant pair counts b and c using the exact conditional binomial distribution instead of the asymptotic chi-square approximation.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(1) exact two-sided binomial tail evaluation` |
| **Space Complexity** | `O(1)` |

## Mathematical & Safety Invariants

- Two-sided p-value is symmetric in (b, c) and equals the exact binom.test reference.

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
