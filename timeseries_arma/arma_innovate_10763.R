#' Compute innovations algorithm arma prediction order 10763
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10763 <- function(x) {
  filter(x, filter = c(4 * 0.1, -3 * 0.05), method = "recursive")
}
