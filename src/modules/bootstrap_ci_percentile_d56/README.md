# Deterministic Percentile Bootstrap Confidence Estimator (`bootstrap_ci_percentile_d56`)

> Category: **Resampling Inference** | Language: **R (Base 4.x)**

## Overview

Computes reproducible percentile confidence bounds for sample means via fixed-seed deterministic index sampling without global RNG side effects.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(B * N)` |
| **Space Complexity** | `O(B)` |

## Mathematical & Safety Invariants

- Lower confidence bound <= bootstrapped median <= upper confidence bound containing sample mean.

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
