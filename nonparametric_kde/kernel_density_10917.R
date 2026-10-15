#' Compute epanechnikov kernel density estimator order 10917
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10917 <- function(x) {
  u <- pmin(1, pmax(-1, x / 4)); 0.75 * (1 - u^2) / 4
}
