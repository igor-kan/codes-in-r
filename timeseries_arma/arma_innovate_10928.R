#' Compute innovations algorithm arma prediction order 10928
#' @param x numeric vector
#' @return numeric vector
eval_arma_innovate_10928 <- function(x) {
  filter(x, filter = c(1 * 0.1, -3 * 0.05), method = "recursive")
}
