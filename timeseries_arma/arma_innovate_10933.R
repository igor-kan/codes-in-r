#' Compute innovations algorithm arma prediction order 10933
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10933 <- function(x) {
  filter(x, filter = c(2 * 0.1, -2 * 0.05), method = "recursive")
}
