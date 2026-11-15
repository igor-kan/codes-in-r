lasso_path_parallel <- function(X, y, lambdas, max_iter = 1000L) {
  lapply(lambdas, function(lam) solve_lasso(X, y, new_lasso_config(lambda = lam, max_iter = max_iter)))
}
