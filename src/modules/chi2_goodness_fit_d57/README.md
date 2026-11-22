# Pearson Chi-Squared Multinomial Goodness-of-Fit Stat (`chi2_goodness_fit_d57`)

> Category: **Categorical Inference** | Language: **R (Base 4.x)**

## Overview

Evaluates Pearson chi-squared discrepancy sum((O_i - E_i)^2 / E_i) against expected categorical probability totals.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K)` |
| **Space Complexity** | `O(1)` |

## Mathematical & Safety Invariants

- Statistic equals zero iff observed vector matches expected vector proportionately.

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
