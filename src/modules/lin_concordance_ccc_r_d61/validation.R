check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    lin_concordance_ccc_r_d61_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
