# Core type definitions and operational interfaces for Zero-Copy RcppArmadillo Matrix Multiplication Engine
# Module: rcpp_armadillo_gemm

.module_env <- new.env(parent = emptyenv())
.module_env$ALIGNMENT <- 64

new_rcpp_armadillo_gemm_config <- function(capacity = 1024, tolerance = 1e-12, max_iterations = 1000) {
  structure(
    list(
      capacity = as.integer(capacity),
      tolerance = as.numeric(tolerance),
      max_iterations = as.integer(max_iterations)
    ),
    class = "rcpp_armadillo_gemm_config"
  )
}

new_rcpp_armadillo_gemm_context <- function(config = new_rcpp_armadillo_gemm_config()) {
  structure(
    list(
      config = config,
      operations_count = 0L,
      state = NULL
    ),
    class = "rcpp_armadillo_gemm_context"
  )
}
