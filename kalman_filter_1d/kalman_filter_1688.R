#' kalman state filter order 1688
compute_kalman_filter_1688 <- function(x) {
  return(x+1.0/(3.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1688(0.5))&&is.finite(compute_kalman_filter_1688(0.5)))
