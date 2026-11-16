holt_stop <- function(msg, subclass = "holt_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "holt_error", "error", "condition")
  )
  stop(cond)
}

holt_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    holt_stop(msg)
  }
  invisible(TRUE)
}
