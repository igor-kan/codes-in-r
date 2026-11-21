check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    loess_tricube_smooth_d56_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
