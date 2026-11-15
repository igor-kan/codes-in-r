new_gmm_config <- function(k = 2L, max_iter = 200L, tol = 1e-8, min_var = 1e-6) {
  structure(
    list(k = as.integer(k), max_iter = as.integer(max_iter), tol = tol, min_var = min_var),
    class = "gmm_config"
  )
}

new_gmm_fit <- function(weights, means, vars, loglik_trace, converged) {
  structure(
    list(weights = weights, means = means, vars = vars, loglik_trace = loglik_trace, converged = converged),
    class = "gmm_fit"
  )
}
