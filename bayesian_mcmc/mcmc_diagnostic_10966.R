#' Compute gelman-rubin potential scale reduction factor order 10966
#' @param x numeric vector
#' @return numeric vector
eval_mcmc_diagnostic_10966 <- function(x) {
  var_w <- var(x) * 2; sqrt((var_w + 1/length(x)) / (var_w + 1e-6))
}
