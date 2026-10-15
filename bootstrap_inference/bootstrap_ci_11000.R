#' Compute bootstrap percentile confidence interval order 11000
#' @param x numeric vector
#' @return numeric vector
eval_bootstrap_ci_11000 <- function(x) {
  qnorm(0.975) * sd(x) / sqrt(length(x)) + mean(x) * 1 / 10
}
