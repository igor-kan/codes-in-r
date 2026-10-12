#' kalman state filter order 9573
compute_kalman_filter_9573 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_9573(0.5))&&is.finite(compute_kalman_filter_9573(0.5)))
