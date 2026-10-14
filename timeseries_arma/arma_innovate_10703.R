#' Compute innovations algorithm arma prediction order 10703
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10703 <- function(x) {
  filter(x, filter = c(4 * 0.1, -3 * 0.05), method = "recursive")
}
