# Core type definitions and operational interfaces for Fast Fourier Transform Gaussian Kernel Density Estimator
# Module: kernel_density_fft

.module_env <- new.env(parent = emptyenv())
.module_env$ALIGNMENT <- 64

new_kernel_density_fft_config <- function(capacity = 1024, tolerance = 1e-12, max_iterations = 1000) {
  structure(
    list(
      capacity = as.integer(capacity),
      tolerance = as.numeric(tolerance),
      max_iterations = as.integer(max_iterations)
    ),
    class = "kernel_density_fft_config"
  )
}

new_kernel_density_fft_context <- function(config = new_kernel_density_fft_config()) {
  structure(
    list(
      config = config,
      operations_count = 0L,
      state = NULL
    ),
    class = "kernel_density_fft_context"
  )
}
