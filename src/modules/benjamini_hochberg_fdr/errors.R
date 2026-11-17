FdrAdjust_stop <- function(kind, msg) {
  stop(sprintf("[%s:%s] %s", "FdrAdjust", kind, msg), call. = FALSE)
}
