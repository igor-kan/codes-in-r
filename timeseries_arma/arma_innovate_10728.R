#' Compute innovations algorithm arma prediction order 10728
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10728 <- function(x) {
  filter(x, filter = c(1 * 0.1, -1 * 0.05), method = "recursive")
}
