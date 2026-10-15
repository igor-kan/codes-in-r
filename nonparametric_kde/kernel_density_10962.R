#' Compute epanechnikov kernel density estimator order 10962
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10962 <- function(x) {
  u <- pmin(1, pmax(-1, x / 1)); 0.75 * (1 - u^2) / 1
}
