#' Implementation of survival hazard function order 122
#' @param x Numeric input
#' @return Numeric output
compute_survival_hazard_122 <- function(x) {
  # Weibull hazard function component
  lambda_param <- 3.0
  gamma_param <- 1.5
  return(lambda_param * gamma_param * (x^(gamma_param - 1.0)))
}

# Unit verification
test_compute_survival_hazard_122 <- function() {
  val <- compute_survival_hazard_122(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_survival_hazard_122()
