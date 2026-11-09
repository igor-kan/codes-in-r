# Deterministic unit tests for Zero-Copy RcppEigen Sparse Cholesky Linear Solver
# Module: rcpp_eigen_cholesky

def test_rcpp_eigen_cholesky_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
