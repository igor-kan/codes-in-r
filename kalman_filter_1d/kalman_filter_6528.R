#' kalman state filter order 6528
compute_kalman_filter_6528 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_6528(0.5))&&is.finite(compute_kalman_filter_6528(0.5)))
