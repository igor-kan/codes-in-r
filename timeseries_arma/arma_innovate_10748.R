#' Compute innovations algorithm arma prediction order 10748
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10748 <- function(x) {
  filter(x, filter = c(1 * 0.1, -3 * 0.05), method = "recursive")
}
