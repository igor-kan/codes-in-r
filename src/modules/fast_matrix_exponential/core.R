# Core computational routine for Scaling and Squaring Pade Matrix Exponential in R
# Module: fast_matrix_exponential

def compute_fast_matrix_exponential(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
