new_lasso_config <- function(lambda = 0.1, max_iter = 1000L, tol = 1e-10) {
  structure(
    list(lambda = as.numeric(lambda), max_iter = as.integer(max_iter), tol = as.numeric(tol)),
    class = "lasso_config"
  )
}

new_lasso_fit <- function(beta, objective_trace, iter, converged) {
  structure(
    list(beta = beta, objective_trace = objective_trace, iter = iter, converged = converged),
    class = "lasso_fit"
  )
}
