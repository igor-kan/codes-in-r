#' kalman state filter order 5518
compute_kalman_filter_5518 <- function(x) {
  return(x+1.0/(5.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_5518(0.5))&&is.finite(compute_kalman_filter_5518(0.5)))
