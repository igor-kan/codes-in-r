check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    mann_whitney_u_wilcox_r_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
