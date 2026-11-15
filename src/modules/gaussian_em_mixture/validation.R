validate_gmm_inputs <- function(x, config) {
  gmm_assert(is.numeric(x) && length(x) >= config$k * 2L, "insufficient numeric samples")
  gmm_assert(all(is.finite(x)), "samples must be finite")
  gmm_assert(config$k >= 1L && config$min_var > 0.0, "invalid mixture component count or min_var")
  invisible(TRUE)
}
