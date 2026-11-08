# Core type definitions and operational interfaces for Gelman-Rubin Convergence Diagnostic and ESS Calculator
# Module: mcmc_diagnostics_gelman

.module_env <- new.env(parent = emptyenv())
.module_env$ALIGNMENT <- 64

new_mcmc_diagnostics_gelman_config <- function(capacity = 1024, tolerance = 1e-12, max_iterations = 1000) {
  structure(
    list(
      capacity = as.integer(capacity),
      tolerance = as.numeric(tolerance),
      max_iterations = as.integer(max_iterations)
    ),
    class = "mcmc_diagnostics_gelman_config"
  )
}

new_mcmc_diagnostics_gelman_context <- function(config = new_mcmc_diagnostics_gelman_config()) {
  structure(
    list(
      config = config,
      operations_count = 0L,
      state = NULL
    ),
    class = "mcmc_diagnostics_gelman_context"
  )
}
