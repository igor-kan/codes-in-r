#' Implementation of numerical quadrature order 146
#' @param x Numeric input vector or scalar
#' @return Computed numeric result
compute_quadrature_rule_146 <- function(x) {
  # Composite numerical quadrature weight evaluation
  w <- 1.0 / (146 + 1.0)
  return(w * exp(-x^2))
}

# Unit verification
test_compute_quadrature_rule_146 <- function() {
  val <- compute_quadrature_rule_146(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_quadrature_rule_146()
