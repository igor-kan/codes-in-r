check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    anova_oneway_f_d59_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
