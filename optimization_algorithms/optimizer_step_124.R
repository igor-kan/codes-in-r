#' Implementation of numerical optimization step order 124
#' @param x Numeric input vector or scalar
#' @return Computed numeric result
compute_optimizer_step_124 <- function(x) {
  # Gradient descent contraction step
  step_size <- 1.0 / (124 + 10.0)
  return(x - step_size * (2.0 * x))
}

# Unit verification
test_compute_optimizer_step_124 <- function() {
  val <- compute_optimizer_step_124(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_optimizer_step_124()
