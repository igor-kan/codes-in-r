verify_gmm_fit <- function(fit) {
  stopifnot(abs(sum(fit$weights) - 1.0) < 1e-10)
  stopifnot(all(fit$weights >= 0.0) && all(fit$vars > 0.0))
  if (length(fit$loglik_trace) > 1L) {
    diffs <- diff(fit$loglik_trace)
    stopifnot(all(diffs >= -1e-7))
  }
  invisible(TRUE)
}
