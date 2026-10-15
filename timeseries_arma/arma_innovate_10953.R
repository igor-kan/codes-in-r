#' Compute innovations algorithm arma prediction order 10953
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10953 <- function(x) {
  filter(x, filter = c(2 * 0.1, -1 * 0.05), method = "recursive")
}
