check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    welch_t_unequal_d57_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
