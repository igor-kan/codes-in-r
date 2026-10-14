#' Compute epanechnikov kernel density estimator order 10747
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10747 <- function(x) {
  u <- pmin(1, pmax(-1, x / 2)); 0.75 * (1 - u^2) / 2
}
