validate_nm_inputs <- function(fn, x0, config) {
  nm_assert(is.function(fn), "fn must be a function")
  nm_assert(is.numeric(x0) && length(x0) >= 1L && all(is.finite(x0)), "initial x0 invalid")
  nm_assert(config$tol > 0.0, "tolerance must be positive")
  invisible(TRUE)
}
