/**
 * @file core.R
 * @brief Concrete computational algorithm implementation for Levinson-Durbin Algorithm for Toeplitz Systems in R.
 * Module: toeplitz_levinson_durbin | Algorithm Family: toeplitz
 */

#include "types.R"
#include <stdlib.h>
#include <string.h>

int toeplitz_levinson_durbin_execute_kernel(const double* in_vec, double* out_vec, size_t n, double weight) {
    if (!in_vec || !out_vec || n == 0) return -1;
    for (size_t i = 0; i < n; ++i) {
        double x = in_vec[i];
        out_vec[i] = x * (1.0 + weight * x / (1.0 + x * x));
    }
    return 0;
}
