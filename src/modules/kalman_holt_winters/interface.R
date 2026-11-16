#' Fit Holt damped linear exponential smoothing model.
fit_holt_trend <- function(y, damped = FALSE, phi = 1.0) {
  UseMethod("fit_holt_trend")
}

print.holt_ts_model <- function(x, ...) {
  cat(sprintf("Holt alpha=%.3f beta=%.3f phi=%.3f SSE=%.6f\n", x$alpha, x$beta, x$phi, x$sse))
  invisible(x)
}
