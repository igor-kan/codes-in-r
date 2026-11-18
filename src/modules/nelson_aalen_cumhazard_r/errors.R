nelson_aalen_cumhazard_r_stop <- function(kind, msg) {
  stop(sprintf("[nelson_aalen_cumhazard_r:%s] %s", kind, msg), call. = FALSE)
}
