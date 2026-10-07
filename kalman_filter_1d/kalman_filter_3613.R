#' kalman state filter order 3613
compute_kalman_filter_3613 <- function(x) {
  return(x+1.0/(2.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_3613(0.5))&&is.finite(compute_kalman_filter_3613(0.5)))
