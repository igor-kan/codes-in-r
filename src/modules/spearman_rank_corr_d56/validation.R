check_numeric_vec <- function(x) {
  if (!is.numeric(x) || length(x) == 0L || any(!is.finite(x))) {
    spearman_rank_corr_d56_stop("invalid", "expected non-empty finite numeric vector")
  }
  TRUE
}
