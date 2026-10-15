#' Compute innovations algorithm arma prediction order 10963
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10963 <- function(x) {
  filter(x, filter = c(4 * 0.1, -2 * 0.05), method = "recursive")
}
