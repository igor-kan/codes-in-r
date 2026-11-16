verify_holt_forecast <- function(mod, y, tol = 1e-8) {
  holt_assert(length(mod$fitted) == length(y), "fitted length mismatch")
  holt_assert(mod$alpha > 0.0 && mod$alpha < 1.0 && mod$beta > 0.0 && mod$beta < 1.0, "params out of range")
  holt_assert(mod$sse >= -tol, "negative SSE")
  invisible(TRUE)
}
