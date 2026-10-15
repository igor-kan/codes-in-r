#' Compute innovations algorithm arma prediction order 10943
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10943 <- function(x) {
  filter(x, filter = c(4 * 0.1, -3 * 0.05), method = "recursive")
}
