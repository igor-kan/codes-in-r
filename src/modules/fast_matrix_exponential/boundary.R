# Boundary validation and exceptional input guarding for Scaling and Squaring Pade Matrix Exponential in R
# Module: fast_matrix_exponential

def sanitize_fast_matrix_exponential_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
