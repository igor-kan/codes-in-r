# Stratified 2x2xK Cochran-Mantel-Haenszel Common Odds Ratio (`cochran_mantel_haenszel_r`)

> Category: **Categorical Epidemiology** | Language: **R (Base 4.x)**

## Overview

Computes the Mantel-Haenszel pooled common odds ratio and chi-squared test statistic across K stratified 2x2 contingency tables.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K) stratum hypergeometric expectation & variance pooling` |
| **Space Complexity** | `O(K)` |

## Mathematical & Safety Invariants

- Matches Base-R mantelhaen.test(..., correct=FALSE) common odds ratio and statistic.

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
