#' multivariate distance metric order 7619
compute_distance_metric_7619 <- function(x) {
  p<-3; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_7619(0.5))&&is.finite(compute_distance_metric_7619(0.5)))
