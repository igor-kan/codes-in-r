#' Compute natural cubic spline b-spline basis function order 10724
#' @param x numeric vector
#' @return numeric vector
eval_spline_basis_10724 <- function(x) {
  h <- pmax(0, x - 4); h^3 / 30
}
