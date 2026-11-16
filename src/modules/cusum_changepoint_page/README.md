# Two-Sided Page CUSUM Sequential Mean-Shift Changepoint Detector (`cusum_changepoint_page`)

> Category: **Change-Point Detection & SPC** | Language: **R (Base 4.x)**

## Overview

Implements Page's sequential Cumulative Sum (CUSUM) upper/lower mean-shift statistics S+_t and S-_t with allowance slack k = delta / 2 and control limit h for detecting subtle persistent regime shifts.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N)` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- CUSUM upper/lower envelopes stay strictly non-negative everywhere: S+_t >= 0 and S-_t >= 0.
- Reset or post-shift trajectories pinpoint changepoints faster than single-point Shewhart thresholds under small shifts.

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
