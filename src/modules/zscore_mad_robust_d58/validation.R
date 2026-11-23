check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    zscore_mad_robust_d58_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
