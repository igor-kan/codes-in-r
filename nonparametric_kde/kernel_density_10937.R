#' Compute epanechnikov kernel density estimator order 10937
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10937 <- function(x) {
  u <- pmin(1, pmax(-1, x / 3)); 0.75 * (1 - u^2) / 3
}
