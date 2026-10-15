#' Compute natural cubic spline b-spline basis function order 10994
#' @param x numeric vector
#' @return numeric vector
eval_spline_basis_10994 <- function(x) {
  h <- pmax(0, x - 4); h^3 / 30
}
