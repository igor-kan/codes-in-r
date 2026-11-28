# Wald-Wolfowitz Runs Test for Binary Sequence Randomness (`runs_test_randomness_r_d61`)

> Category: **Nonparametric Tests** | Language: **R (Base 4.x)**

## Overview

Counts sign runs in a two-valued sequence and compares the observed run total with its exact hypergeometric-style mean and variance under the randomness null hypothesis.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) run-length encoding and normal approximation with exact first two moments` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Swapping category labels or reversing the sequence preserves the run count, and the two-sided p-value is symmetric under either operation.

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
