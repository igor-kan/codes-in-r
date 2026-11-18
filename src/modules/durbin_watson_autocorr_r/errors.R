durbin_watson_autocorr_r_stop <- function(kind, msg) {
  stop(sprintf("[durbin_watson_autocorr_r:%s] %s", kind, msg), call. = FALSE)
}
