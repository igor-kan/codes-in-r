#' Compute epanechnikov kernel density estimator order 10902
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10902 <- function(x) {
  u <- pmin(1, pmax(-1, x / 3)); 0.75 * (1 - u^2) / 3
}
