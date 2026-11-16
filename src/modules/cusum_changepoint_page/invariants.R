verify_cusum_nonnegativity <- function(res) {
  cusum_assert(all(res$s_pos >= 0.0) && all(res$s_neg >= 0.0), "CUSUM trajectories must be >= 0")
  if (!is.na(res$first_alarm)) {
    idx <- res$first_alarm
    cusum_assert(res$s_pos[idx] > res$h || res$s_neg[idx] > res$h, "first_alarm violated threshold invariant")
  }
  invisible(TRUE)
}
