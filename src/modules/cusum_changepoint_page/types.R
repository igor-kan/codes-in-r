new_cusum_result <- function(s_pos, s_neg, alarms, first_alarm, h, k) {
  structure(
    list(s_pos = s_pos, s_neg = s_neg, alarms = alarms, first_alarm = first_alarm, h = h, k = k),
    class = "cusum_result"
  )
}
