# Nelder-Mead Simplex Polytope Minimizer (`nelder_mead_base_r`)

> Category: **Derivative-Free Optimization** | Language: **R (Base 4.x)**

## Overview

Derivative-free Nelder-Mead reflection, expansion, outside/inside contraction, and simplex shrinkage optimizer in pure Base R.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(evals * d)` |
| **Space Complexity** | `O(d^2)` |

## Mathematical & Safety Invariants

- best objective value across iterations monotonically non-increasing
- converges reliably to global minimum on Rosenbrock banana function
- polytope diameter drops strictly below tolerance on termination

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
