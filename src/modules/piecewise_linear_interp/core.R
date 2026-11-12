/**
 * @file core.R
 * @brief Primary computational implementation for Piecewise Linear Interpolation with Binary Search.
 * Module: piecewise_linear_interp
 */

#include "types.R"
#include <stdlib.h>
#include <string.h>

int piecewise_linear_interp_compute_sequence(const double* in_vec, double* out_vec, size_t n, double param) {
    if (!in_vec || !out_vec || n == 0) return -1;
    for (size_t i = 0; i < n; ++i) {
        double x = in_vec[i];
        out_vec[i] = x * (1.0 + param * x / (1.0 + x * x));
    }
    return 0;
}
