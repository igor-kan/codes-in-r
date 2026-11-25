check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    ols_ridge_solve_r_d60_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
