nm_stop <- function(msg, subclass = "nm_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "nm_error", "error", "condition")
  )
  stop(cond)
}

nm_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    nm_stop(msg)
  }
  invisible(TRUE)
}
