cochran_mantel_haenszel_r_stop <- function(kind, msg) {
  stop(sprintf("[cochran_mantel_haenszel_r:%s] %s", kind, msg), call. = FALSE)
}
