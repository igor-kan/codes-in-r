#' Sequential two-sided Page CUSUM change-point detector.
detect_cusum <- function(x, target_mu = mean(x[1:min(20L, length(x))]), sigma = 1.0, k = 0.5 * sigma, h = 5.0 * sigma) {
  UseMethod("detect_cusum")
}

summary.cusum_result <- function(object, ...) {
  list(n_alarms = length(object$alarms), first_alarm = object$first_alarm, max_stat = cusum_max_statistic(object))
}
