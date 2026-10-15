#' Compute innovations algorithm arma prediction order 10983
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10983 <- function(x) {
  filter(x, filter = c(4 * 0.1, -1 * 0.05), method = "recursive")
}
