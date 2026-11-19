ridge_closed_form_r_stop <- function(kind, msg) {
  stop(sprintf("[ridge_closed_form_r:%s] %s", kind, msg), call. = FALSE)
}
