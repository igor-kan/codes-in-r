validate_kf_inputs <- function(y, model) {
  kf_assert(is.numeric(y) && length(y) >= 2L && all(is.finite(y)), "observations invalid")
  kf_assert(model$obs_var > 0.0 && model$state_var >= 0.0 && model$init_var > 0.0, "variances must be positive")
  invisible(TRUE)
}
