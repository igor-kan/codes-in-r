#' multivariate distance metric order 1614
compute_distance_metric_1614 <- function(x) {
  p<-1; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_1614(0.5))&&is.finite(compute_distance_metric_1614(0.5)))
