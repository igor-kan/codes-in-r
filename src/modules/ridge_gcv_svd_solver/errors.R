ridge_stop <- function(msg, subclass = "ridge_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "ridge_error", "error", "condition")
  )
  stop(cond)
}

ridge_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    ridge_stop(msg)
  }
  invisible(TRUE)
}
