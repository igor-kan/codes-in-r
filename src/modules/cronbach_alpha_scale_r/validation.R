check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    cronbach_alpha_scale_r_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
