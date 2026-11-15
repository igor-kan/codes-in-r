kf_stop <- function(msg, subclass = "kf_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "kf_error", "error", "condition")
  )
  stop(cond)
}

kf_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    kf_stop(msg)
  }
  invisible(TRUE)
}
