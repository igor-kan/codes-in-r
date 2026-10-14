#' Compute innovations algorithm arma prediction order 10793
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10793 <- function(x) {
  filter(x, filter = c(2 * 0.1, -3 * 0.05), method = "recursive")
}
