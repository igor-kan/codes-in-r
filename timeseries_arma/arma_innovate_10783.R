#' Compute innovations algorithm arma prediction order 10783
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10783 <- function(x) {
  filter(x, filter = c(4 * 0.1, -2 * 0.05), method = "recursive")
}
