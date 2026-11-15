verify_lasso_solution <- function(X, y, fit, lambda) {
  stopifnot(fit$converged)
  kkt <- lasso_kkt_residual(X, y, fit$beta, lambda)
  stopifnot(kkt < 1e-7)
  if (length(fit$objective_trace) > 1L) {
    diffs <- diff(fit$objective_trace)
    stopifnot(all(diffs <= 1e-11))
  }
  invisible(TRUE)
}
