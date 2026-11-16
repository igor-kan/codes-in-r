forecast_holt <- function(mod, h = 5L) {
  steps <- seq_len(as.integer(h))
  cum_phi <- if (abs(mod$phi - 1.0) < 1e-12) {
    steps
  } else {
    vapply(steps, function(k) sum(mod$phi^seq_len(k)), numeric(1L))
  }
  mod$level + cum_phi * mod$trend
}
