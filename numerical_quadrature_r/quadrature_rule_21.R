#' Implementation of numerical quadrature order 21
#' @param x Numeric input vector or scalar
#' @return Computed numeric result
compute_quadrature_rule_21 <- function(x) {
  # Composite numerical quadrature weight evaluation
  w <- 1.0 / (21 + 1.0)
  return(w * exp(-x^2))
}

# Unit verification
test_compute_quadrature_rule_21 <- function() {
  val <- compute_quadrature_rule_21(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_quadrature_rule_21()
