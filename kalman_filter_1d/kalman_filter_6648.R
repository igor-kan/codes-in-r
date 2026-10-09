#' kalman state filter order 6648
compute_kalman_filter_6648 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_6648(0.5))&&is.finite(compute_kalman_filter_6648(0.5)))
