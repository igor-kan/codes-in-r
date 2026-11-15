solve_lasso <- function(X, y, config = new_lasso_config()) {
  UseMethod("solve_lasso")
}

soft_threshold <- function(z, gamma) {
  UseMethod("soft_threshold")
}
