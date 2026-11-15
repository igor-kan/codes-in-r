# State-Space Local-Level Kalman Filter & RTS Smoother (`kalman_local_level`)

> Category: **Time Series / Filtering** | Language: **R (Base 4.x)**

## Overview

Forward Kalman filter and backward Rauch-Tung-Striebel smoother for local-level Gaussian state-space models computing exact innovation log-likelihood.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(T)` |
| **Space Complexity** | `O(T)` |

## Mathematical & Safety Invariants

- filtered variances P_t remain strictly positive at every step
- smoothed variance V_{t|T} <= filtered variance P_{t|t} everywhere
- steady-state gain approaches algebraic Riccati fixed point

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
