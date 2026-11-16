mk_stop <- function(msg, subclass = "mk_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "mk_error", "error", "condition")
  )
  stop(cond)
}

mk_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    mk_stop(msg)
  }
  invisible(TRUE)
}
