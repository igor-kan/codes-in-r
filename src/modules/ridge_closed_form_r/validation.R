check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    ridge_closed_form_r_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
