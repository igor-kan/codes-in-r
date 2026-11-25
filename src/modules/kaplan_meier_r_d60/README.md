# Kaplan-Meier Right-Censored Product-Limit Survival Estimator (`kaplan_meier_r_d60`)

> Category: **Survival Analysis** | Language: **R (Base 4.x)**

## Overview

Computes the non-parametric Kaplan-Meier survival curve S(t) = prod_{t_i <= t} (1 - d_i / n_i) properly discounting censored observations from risk sets.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) sorted unique event-time product update` |
| **Space Complexity** | `O(K)` |

## Mathematical & Safety Invariants

- Survival curve starts <= 1.0, stays non-negative, and is non-increasing.

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
