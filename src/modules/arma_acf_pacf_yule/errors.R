RMod_stop <- function(kind, msg) {
  stop(sprintf("[%s:%s] %s", "RMod", kind, msg), call. = FALSE)
}
