# Lin Concordance Correlation Coefficient with Bias Decomposition (`lin_concordance_ccc_r_d61`)

> Category: **Agreement Statistics** | Language: **R (Base 4.x)**

## Overview

Estimates Lin's concordance correlation coefficient for paired measurements and factors it into the Pearson correlation multiplied by a bias-correction term built from location and scale disagreement.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) centered cross-moment accumulation and scale-shift factorization` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- CCC equals rho times the bias factor, lies in [-1, 1], and is invariant under a common positive affine transform of both inputs.

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
