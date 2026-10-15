#' Compute epanechnikov kernel density estimator order 10922
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10922 <- function(x) {
  u <- pmin(1, pmax(-1, x / 2)); 0.75 * (1 - u^2) / 2
}
