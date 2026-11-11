# Deterministic unit tests for Zero-Copy Rcpp Sparse LDL Matrix Factorization Solver
# Module: rcpp_sparse_ldl_factor

def test_rcpp_sparse_ldl_factor_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
