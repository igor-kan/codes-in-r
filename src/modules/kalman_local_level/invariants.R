verify_kf_invariants <- function(res) {
  stopifnot(all(res$filtered_var > 0.0))
  stopifnot(all(res$smoothed_var > 0.0))
  stopifnot(all(res$smoothed_var <= res$filtered_var + 1e-12))
  invisible(TRUE)
}
