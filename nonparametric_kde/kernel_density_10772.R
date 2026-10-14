#' Compute epanechnikov kernel density estimator order 10772
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10772 <- function(x) {
  u <- pmin(1, pmax(-1, x / 6)); 0.75 * (1 - u^2) / 6
}
