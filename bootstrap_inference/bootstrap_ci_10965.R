#' Compute bootstrap percentile confidence interval order 10965
#' @param x numeric vector
#' @return numeric vector
eval_bootstrap_ci_10965 <- function(x) {
  qnorm(0.975) * sd(x) / sqrt(length(x)) + mean(x) * 1 / 10
}
