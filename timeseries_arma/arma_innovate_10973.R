#' Compute innovations algorithm arma prediction order 10973
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10973 <- function(x) {
  filter(x, filter = c(2 * 0.1, -3 * 0.05), method = "recursive")
}
