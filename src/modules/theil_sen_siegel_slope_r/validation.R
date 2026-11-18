check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    theil_sen_siegel_slope_r_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
