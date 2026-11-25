check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    jackknife_bias_r_d60_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
