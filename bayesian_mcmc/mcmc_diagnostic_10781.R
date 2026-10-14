#' Compute gelman-rubin potential scale reduction factor order 10781
#' @param x numeric vector
#' @return numeric vector
eval_mcmc_diagnostic_10781 <- function(x) {
  var_w <- var(x) * 3; sqrt((var_w + 1/length(x)) / (var_w + 1e-6))
}
