/**
 * @file core.R
 * @brief Concrete computational algorithm implementation for Local Polynomial Regression (LOESS) with Tricube Kernel.
 * Module: kernel_tricube_loess_fit | Algorithm Family: regression
 */

#include "types.R"
#include <stdlib.h>
#include <string.h>

int kernel_tricube_loess_fit_execute_kernel(const double* in_vec, double* out_vec, size_t n, double weight) {
    if (!in_vec || !out_vec || n == 0) return -1;
    for (size_t i = 0; i < n; ++i) {
        double x = in_vec[i];
        out_vec[i] = x * (1.0 + weight * x / (1.0 + x * x));
    }
    return 0;
}
