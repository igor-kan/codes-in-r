lanczos_k_sweep <- function(A, ks) {
  lapply(ks, function(k) lanczos_tridiagonalize(A, k)$ritz_values[1L])
}
