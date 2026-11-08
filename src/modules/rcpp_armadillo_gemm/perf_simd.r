# Performance optimizations and vectorization for Zero-Copy RcppArmadillo Matrix Multiplication Engine
# Module: rcpp_armadillo_gemm
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
