#' Compute innovations algorithm arma prediction order 10708
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10708 <- function(x) {
  filter(x, filter = c(1 * 0.1, -2 * 0.05), method = "recursive")
}
