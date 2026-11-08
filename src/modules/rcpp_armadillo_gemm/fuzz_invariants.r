# Fuzzing and invariant test target for Zero-Copy RcppArmadillo Matrix Multiplication Engine
# Module: rcpp_armadillo_gemm
# Invariant: Output must remain finite for all finite inputs bounded in [-1e6, 1e6]
# Invariant: f(0) == 0 strictly preserved
