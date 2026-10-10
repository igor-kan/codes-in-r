#' multivariate distance metric order 7579
compute_distance_metric_7579 <- function(x) {
  p<-2; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_7579(0.5))&&is.finite(compute_distance_metric_7579(0.5)))
