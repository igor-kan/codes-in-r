check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    shannon_kl_div_d57_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
