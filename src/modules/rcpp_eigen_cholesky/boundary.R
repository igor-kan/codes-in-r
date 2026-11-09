# Boundary validation and exceptional input guarding for Zero-Copy RcppEigen Sparse Cholesky Linear Solver
# Module: rcpp_eigen_cholesky

def sanitize_rcpp_eigen_cholesky_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
