verify_pava_invariants <- function(y, weights, fit) {
  if (length(fit$fitted) > 1L) {
    stopifnot(all(diff(fit$fitted) >= -1e-14))
  }
  stopifnot(abs(sum(weights * y) - sum(weights * fit$fitted)) < 1e-10)
  invisible(TRUE)
}
