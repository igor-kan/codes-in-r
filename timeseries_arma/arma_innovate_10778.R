#' Compute innovations algorithm arma prediction order 10778
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10778 <- function(x) {
  filter(x, filter = c(3 * 0.1, -3 * 0.05), method = "recursive")
}
