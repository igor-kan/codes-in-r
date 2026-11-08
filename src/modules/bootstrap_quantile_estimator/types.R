# Core type definitions and operational interfaces for Parallel Bootstrap Standard Error and Quantile Estimator
# Module: bootstrap_quantile_estimator

.module_env <- new.env(parent = emptyenv())
.module_env$ALIGNMENT <- 64

new_bootstrap_quantile_estimator_config <- function(capacity = 1024, tolerance = 1e-12, max_iterations = 1000) {
  structure(
    list(
      capacity = as.integer(capacity),
      tolerance = as.numeric(tolerance),
      max_iterations = as.integer(max_iterations)
    ),
    class = "bootstrap_quantile_estimator_config"
  )
}

new_bootstrap_quantile_estimator_context <- function(config = new_bootstrap_quantile_estimator_config()) {
  structure(
    list(
      config = config,
      operations_count = 0L,
      state = NULL
    ),
    class = "bootstrap_quantile_estimator_context"
  )
}
