new_ks_report <- function(statistic, p_value, n1, n2) {
  structure(
    list(statistic = statistic, p_value = p_value, n1 = as.integer(n1), n2 = as.integer(n2)),
    class = "ks_report"
  )
}
