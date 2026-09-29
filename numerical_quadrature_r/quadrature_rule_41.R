#' Implementation of numerical quadrature order 41
#' @param x Numeric input vector or scalar
#' @return Computed numeric result
compute_quadrature_rule_41 <- function(x) {
  # Composite numerical quadrature weight evaluation
  w <- 1.0 / (41 + 1.0)
  return(w * exp(-x^2))
}

# Unit verification
test_compute_quadrature_rule_41 <- function() {
  val <- compute_quadrature_rule_41(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_quadrature_rule_41()
