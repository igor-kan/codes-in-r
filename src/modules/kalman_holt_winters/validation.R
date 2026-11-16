validate_holt_series <- function(y, phi) {
  holt_assert(is.numeric(y) && length(y) >= 6L, "need >= 6 observations")
  holt_assert(all(is.finite(y)), "non-finite value in series")
  holt_assert(is.numeric(phi) && phi > 0.0 && phi <= 1.0, "damping phi must be in (0, 1]")
  invisible(TRUE)
}
