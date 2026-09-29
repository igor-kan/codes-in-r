#' Implementation of matrix decomposition step order 123
#' @param x Numeric input vector or scalar
#' @return Computed numeric result
compute_matrix_factor_123 <- function(x) {
  # Cholesky / Givens rotation scalar component
  return(sqrt(x^2 + 123^2) / 123)
}

# Unit verification
test_compute_matrix_factor_123 <- function() {
  val <- compute_matrix_factor_123(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_matrix_factor_123()
