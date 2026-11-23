robust_mad_z <- function(x) {
  med <- stats::median(x)
  mad_val <- 1.4826 * stats::median(abs(x - med))
  (x - med) / mad_val
}
