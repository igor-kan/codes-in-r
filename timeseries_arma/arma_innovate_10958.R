#' Compute innovations algorithm arma prediction order 10958
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10958 <- function(x) {
  filter(x, filter = c(3 * 0.1, -3 * 0.05), method = "recursive")
}
