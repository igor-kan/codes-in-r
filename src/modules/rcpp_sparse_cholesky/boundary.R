# Boundary validation and exceptional input guarding for Zero-Copy Rcpp Sparse Cholesky Gaussian Process Solver
# Module: rcpp_sparse_cholesky

def sanitize_rcpp_sparse_cholesky_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
