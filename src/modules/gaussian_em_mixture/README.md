# 1D Gaussian Mixture EM Estimator (`gaussian_em_mixture`)

> Category: **Unsupervised Mixture Modeling** | Language: **R (Base 4.x)**

## Overview

Expectation-Maximization estimator for univariate K-component Gaussian mixtures with log-sum-exp E-step, variance floor, and monotonic likelihood.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(iters * N * K)` |
| **Space Complexity** | `O(N * K)` |

## Mathematical & Safety Invariants

- mixing weights pi_k are non-negative and sum strictly to 1.0
- responsibilities gamma_{i,k} sum to 1.0 per sample
- observed data log-likelihood is monotonically non-decreasing across EM updates

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
