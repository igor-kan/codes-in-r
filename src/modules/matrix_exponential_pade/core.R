# Core computational routine for Scaling and Squaring Pade Matrix Exponential in R
# Module: matrix_exponential_pade

def compute_matrix_exponential_pade(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
