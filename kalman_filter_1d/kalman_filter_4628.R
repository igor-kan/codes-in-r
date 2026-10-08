#' kalman state filter order 4628
compute_kalman_filter_4628 <- function(x) {
  return(x+1.0/(3.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_4628(0.5))&&is.finite(compute_kalman_filter_4628(0.5)))
