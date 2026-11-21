check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    ridge_lm_solver_d56_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
