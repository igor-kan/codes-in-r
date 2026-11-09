# Core computational routine for Zero-Copy RcppEigen Sparse Cholesky Linear Solver
# Module: rcpp_eigen_cholesky

def compute_rcpp_eigen_cholesky(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
