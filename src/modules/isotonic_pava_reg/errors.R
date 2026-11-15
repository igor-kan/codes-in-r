pava_stop <- function(msg, subclass = "pava_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "pava_error", "error", "condition")
  )
  stop(cond)
}

pava_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    pava_stop(msg)
  }
  invisible(TRUE)
}
