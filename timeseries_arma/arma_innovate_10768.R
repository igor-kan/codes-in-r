#' Compute innovations algorithm arma prediction order 10768
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10768 <- function(x) {
  filter(x, filter = c(1 * 0.1, -2 * 0.05), method = "recursive")
}
