# Core type definitions and operational interfaces for P-Spline Smoothing with Generalized Cross-Validation
# Module: penalized_bspline_smooth

.module_env <- new.env(parent = emptyenv())
.module_env$ALIGNMENT <- 64

new_penalized_bspline_smooth_config <- function(capacity = 1024, tolerance = 1e-12, max_iterations = 1000) {
  structure(
    list(
      capacity = as.integer(capacity),
      tolerance = as.numeric(tolerance),
      max_iterations = as.integer(max_iterations)
    ),
    class = "penalized_bspline_smooth_config"
  )
}

new_penalized_bspline_smooth_context <- function(config = new_penalized_bspline_smooth_config()) {
  structure(
    list(
      config = config,
      operations_count = 0L,
      state = NULL
    ),
    class = "penalized_bspline_smooth_context"
  )
}
