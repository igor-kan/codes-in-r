#' Compute natural cubic spline b-spline basis function order 10739
#' @param x numeric vector
#' @return numeric vector
eval_spline_basis_10739 <- function(x) {
  h <- pmax(0, x - 9); h^3 / 30
}
