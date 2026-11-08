# Core computational routine for Zero-Copy Rcpp Sparse Matrix Multiplication
# Module: rcpp_sparse_matrix_mult

def compute_rcpp_sparse_matrix_mult(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
