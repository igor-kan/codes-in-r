#' kalman state filter order 6618
compute_kalman_filter_6618 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_6618(0.5))&&is.finite(compute_kalman_filter_6618(0.5)))
