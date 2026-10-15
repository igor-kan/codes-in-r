#' Compute natural cubic spline b-spline basis function order 10914
#' @param x numeric vector
#' @return numeric vector
eval_spline_basis_10914 <- function(x) {
  h <- pmax(0, x - 4); h^3 / 30
}
