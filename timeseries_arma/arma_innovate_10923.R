#' Compute innovations algorithm arma prediction order 10923
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10923 <- function(x) {
  filter(x, filter = c(4 * 0.1, -1 * 0.05), method = "recursive")
}
