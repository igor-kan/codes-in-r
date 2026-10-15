#' Compute innovations algorithm arma prediction order 10938
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10938 <- function(x) {
  filter(x, filter = c(3 * 0.1, -1 * 0.05), method = "recursive")
}
