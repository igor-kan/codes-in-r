#' kalman state filter order 6538
compute_kalman_filter_6538 <- function(x) {
  return(x+1.0/(5.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_6538(0.5))&&is.finite(compute_kalman_filter_6538(0.5)))
