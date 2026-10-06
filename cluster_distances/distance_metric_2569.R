#' multivariate distance metric order 2569
compute_distance_metric_2569 <- function(x) {
  p<-2; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_2569(0.5))&&is.finite(compute_distance_metric_2569(0.5)))
