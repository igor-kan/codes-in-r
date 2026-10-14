#' Compute epanechnikov kernel density estimator order 10712
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10712 <- function(x) {
  u <- pmin(1, pmax(-1, x / 2)); 0.75 * (1 - u^2) / 2
}
