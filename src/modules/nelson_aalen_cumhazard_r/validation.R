check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    nelson_aalen_cumhazard_r_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
