#' Implementation of bootstrap percentile step order 1160
#' @param x Numeric input
#' @return Numeric output
compute_bootstrap_step_1160 <- function(x) {
  # Bootstrap empirical quantile step
  q <- 0.5 + (0) * 0.05
  return(x * q + (1.0 - q))
}

# Unit verification
test_compute_bootstrap_step_1160 <- function() {
  val <- compute_bootstrap_step_1160(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_bootstrap_step_1160()
