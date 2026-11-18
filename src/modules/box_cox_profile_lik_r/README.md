# Box-Cox Power Transformation Profile Log-Likelihood Maximizer (`box_cox_profile_lik_r`)

> Category: **Regression Transformations** | Language: **R (Base 4.x)**

## Overview

Evaluates the Box-Cox Jacobian-adjusted profile log-likelihood -n/2 log(Var(y^(lambda))) + (lambda - 1)*sum(log(y)) over a lambda grid to stabilize variance.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(G * N) grid-refined profile log-likelihood evaluation` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Exponential of normal sample peaks near lambda = 0 (log transform).

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
