new_irls_config <- function(max_iter = 50L, tol = 1e-10, add_intercept = TRUE) {
  structure(
    list(max_iter = as.integer(max_iter), tol = as.numeric(tol), add_intercept = isTRUE(add_intercept)),
    class = "irls_config"
  )
}

new_irls_fit <- function(coef, se, deviance, iter, converged) {
  structure(
    list(coef = coef, se = se, deviance = deviance, iter = iter, converged = converged),
    class = "irls_fit"
  )
}
