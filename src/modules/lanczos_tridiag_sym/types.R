new_lanczos_result <- function(ritz_values, tridiag, basis) {
  structure(list(ritz_values = ritz_values, tridiag = tridiag, basis = basis), class = "lanczos_fit")
}
