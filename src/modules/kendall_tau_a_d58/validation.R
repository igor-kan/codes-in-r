check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    kendall_tau_a_d58_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
