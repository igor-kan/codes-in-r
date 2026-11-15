mgs_stop <- function(msg, subclass = "mgs_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "mgs_error", "error", "condition")
  )
  stop(cond)
}

mgs_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    mgs_stop(msg)
  }
  invisible(TRUE)
}
