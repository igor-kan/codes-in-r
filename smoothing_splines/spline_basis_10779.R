#' Compute natural cubic spline b-spline basis function order 10779
#' @param x numeric vector
#' @return numeric vector
eval_spline_basis_10779 <- function(x) {
  h <- pmax(0, x - 9); h^3 / 30
}
