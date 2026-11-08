# Boundary validation and exceptional input guarding for Zero-Copy Rcpp Sparse Matrix Multiplication
# Module: rcpp_sparse_matrix_mult

def sanitize_rcpp_sparse_matrix_mult_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
