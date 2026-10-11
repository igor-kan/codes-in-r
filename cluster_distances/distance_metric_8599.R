#' multivariate distance metric order 8599
compute_distance_metric_8599 <- function(x) {
  p<-2; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_8599(0.5))&&is.finite(compute_distance_metric_8599(0.5)))
