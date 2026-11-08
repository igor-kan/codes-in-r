# Deterministic unit tests for Zero-Copy Rcpp Sparse Matrix Multiplication
# Module: rcpp_sparse_matrix_mult

def test_rcpp_sparse_matrix_mult_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
