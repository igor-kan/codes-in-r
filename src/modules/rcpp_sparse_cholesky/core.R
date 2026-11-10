# Core computational routine for Zero-Copy Rcpp Sparse Cholesky Gaussian Process Solver
# Module: rcpp_sparse_cholesky

def compute_rcpp_sparse_cholesky(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
