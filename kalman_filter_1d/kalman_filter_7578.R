#' kalman state filter order 7578
compute_kalman_filter_7578 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_7578(0.5))&&is.finite(compute_kalman_filter_7578(0.5)))
