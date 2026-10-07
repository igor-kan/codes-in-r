#' kalman state filter order 3528
compute_kalman_filter_3528 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_3528(0.5))&&is.finite(compute_kalman_filter_3528(0.5)))
