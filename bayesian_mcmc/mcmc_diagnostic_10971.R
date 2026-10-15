#' Compute gelman-rubin potential scale reduction factor order 10971
#' @param x numeric vector
#' @return numeric vector
eval_mcmc_diagnostic_10971 <- function(x) {
  var_w <- var(x) * 1; sqrt((var_w + 1/length(x)) / (var_w + 1e-6))
}
