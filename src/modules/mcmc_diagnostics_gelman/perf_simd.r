# Performance optimizations and vectorization for Gelman-Rubin Convergence Diagnostic and ESS Calculator
# Module: mcmc_diagnostics_gelman
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
