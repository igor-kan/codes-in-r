nipals_stop <- function(msg, subclass = "nipals_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "nipals_error", "error", "condition")
  )
  stop(cond)
}

nipals_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    nipals_stop(msg)
  }
  invisible(TRUE)
}
