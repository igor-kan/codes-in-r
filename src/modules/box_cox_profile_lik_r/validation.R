check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    box_cox_profile_lik_r_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
