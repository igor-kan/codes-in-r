#' Compute epanechnikov kernel density estimator order 10757
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10757 <- function(x) {
  u <- pmin(1, pmax(-1, x / 5)); 0.75 * (1 - u^2) / 5
}
