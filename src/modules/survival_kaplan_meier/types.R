# Core type definitions and operational interfaces for Kaplan-Meier Product-Limit Survival Analysis Estimator
# Module: survival_kaplan_meier

.module_env <- new.env(parent = emptyenv())
.module_env$ALIGNMENT <- 64

new_survival_kaplan_meier_config <- function(capacity = 1024, tolerance = 1e-12, max_iterations = 1000) {
  structure(
    list(
      capacity = as.integer(capacity),
      tolerance = as.numeric(tolerance),
      max_iterations = as.integer(max_iterations)
    ),
    class = "survival_kaplan_meier_config"
  )
}

new_survival_kaplan_meier_context <- function(config = new_survival_kaplan_meier_config()) {
  structure(
    list(
      config = config,
      operations_count = 0L,
      state = NULL
    ),
    class = "survival_kaplan_meier_context"
  )
}
