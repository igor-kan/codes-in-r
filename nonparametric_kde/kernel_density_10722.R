#' Compute epanechnikov kernel density estimator order 10722
#' @param x numeric vector
#' @return numeric vector
eval_kernel_density_10722 <- function(x) {
  u <- pmin(1, pmax(-1, x / 5)); 0.75 * (1 - u^2) / 5
}
