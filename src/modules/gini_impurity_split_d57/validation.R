check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    gini_impurity_split_d57_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
