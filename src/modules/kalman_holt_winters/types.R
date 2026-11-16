new_holt_model <- function(alpha, beta, phi, level, trend, fitted, residuals, sse) {
  structure(
    list(alpha = alpha, beta = beta, phi = phi, level = level, trend = trend,
         fitted = fitted, residuals = residuals, sse = sse),
    class = "holt_ts_model"
  )
}
