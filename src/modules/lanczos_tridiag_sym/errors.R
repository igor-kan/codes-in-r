lcz_stop <- function(msg, subclass = "lcz_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "lcz_error", "error", "condition")
  )
  stop(cond)
}

lcz_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    lcz_stop(msg)
  }
  invisible(TRUE)
}
