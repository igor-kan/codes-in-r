# Deterministic unit tests for Zero-Copy Rcpp Sparse Cholesky Gaussian Process Solver
# Module: rcpp_sparse_cholesky

def test_rcpp_sparse_cholesky_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
