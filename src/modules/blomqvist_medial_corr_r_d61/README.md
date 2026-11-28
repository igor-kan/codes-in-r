# Blomqvist Medial Sign-Correlation Coefficient Estimator (`blomqvist_medial_corr_r_d61`)

> Category: **Robust Association** | Language: **R (Base 4.x)**

## Overview

Estimates Blomqvist's medial correlation beta = P(sign concordant) - P(sign discordant) after splitting both variables at their sample medians.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) median split sign concordance counting` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Estimate lies in [-1, 1] and is invariant under strictly increasing affine transforms.

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
