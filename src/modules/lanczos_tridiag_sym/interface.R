lanczos_tridiagonalize <- function(A, k, q0 = NULL) {
  UseMethod("lanczos_tridiagonalize")
}

spectral_radius_bound <- function(res) {
  max(abs(res$ritz_values))
}
