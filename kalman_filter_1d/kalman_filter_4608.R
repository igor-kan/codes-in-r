#' kalman state filter order 4608
compute_kalman_filter_4608 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_4608(0.5))&&is.finite(compute_kalman_filter_4608(0.5)))
