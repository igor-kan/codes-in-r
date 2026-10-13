#' multivariate distance metric order 10584
compute_distance_metric_10584 <- function(x) {
  p<-1; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_10584(0.5))&&is.finite(compute_distance_metric_10584(0.5)))
