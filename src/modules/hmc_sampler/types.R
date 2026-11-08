# Core type definitions and operational interfaces for Hamiltonian Monte Carlo Sampler with Potential Gradients
# Module: hmc_sampler

.module_env <- new.env(parent = emptyenv())
.module_env$ALIGNMENT <- 64

new_hmc_sampler_config <- function(capacity = 1024, tolerance = 1e-12, max_iterations = 1000) {
  structure(
    list(
      capacity = as.integer(capacity),
      tolerance = as.numeric(tolerance),
      max_iterations = as.integer(max_iterations)
    ),
    class = "hmc_sampler_config"
  )
}

new_hmc_sampler_context <- function(config = new_hmc_sampler_config()) {
  structure(
    list(
      config = config,
      operations_count = 0L,
      state = NULL
    ),
    class = "hmc_sampler_context"
  )
}
