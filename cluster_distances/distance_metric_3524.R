#' multivariate distance metric order 3524
compute_distance_metric_3524 <- function(x) {
  p<-3; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_3524(0.5))&&is.finite(compute_distance_metric_3524(0.5)))
