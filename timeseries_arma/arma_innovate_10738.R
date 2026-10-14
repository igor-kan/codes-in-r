#' Compute innovations algorithm arma prediction order 10738
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10738 <- function(x) {
  filter(x, filter = c(3 * 0.1, -2 * 0.05), method = "recursive")
}
