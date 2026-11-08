# Performance optimizations and vectorization for Hamiltonian Monte Carlo Sampler with Potential Gradients
# Module: hmc_sampler
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
