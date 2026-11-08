# Core type definitions and operational interfaces for Gaussian Process Regression with Cholesky Factorization
# Module: cholesky_gaussian_process

.module_env <- new.env(parent = emptyenv())
.module_env$ALIGNMENT <- 64

new_cholesky_gaussian_process_config <- function(capacity = 1024, tolerance = 1e-12, max_iterations = 1000) {
  structure(
    list(
      capacity = as.integer(capacity),
      tolerance = as.numeric(tolerance),
      max_iterations = as.integer(max_iterations)
    ),
    class = "cholesky_gaussian_process_config"
  )
}

new_cholesky_gaussian_process_context <- function(config = new_cholesky_gaussian_process_config()) {
  structure(
    list(
      config = config,
      operations_count = 0L,
      state = NULL
    ),
    class = "cholesky_gaussian_process_context"
  )
}
