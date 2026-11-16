cusum_max_statistic <- function(res) {
  max(max(res$s_pos), max(res$s_neg))
}

cusum_alarm_rate <- function(res) {
  length(res$alarms) / max(1L, length(res$s_pos))
}
