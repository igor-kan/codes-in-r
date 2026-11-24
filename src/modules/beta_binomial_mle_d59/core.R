beta_mom_fit <- function(x) {
  if (any(x <= 0.0 | x >= 1.0)) beta_binomial_mle_d59_stop("domain", "values in (0, 1) required")
  m <- mean(x)
  v <- stats::var(x)
  common <- m * (1.0 - m) / v - 1.0
  list(alpha = m * common, beta = (1.0 - m) * common)
}
