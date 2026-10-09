#' multivariate distance metric order 6619
compute_distance_metric_6619 <- function(x) {
  p<-2; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_6619(0.5))&&is.finite(compute_distance_metric_6619(0.5)))
