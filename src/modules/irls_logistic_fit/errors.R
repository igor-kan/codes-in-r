irls_stop <- function(msg, subclass = "irls_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "irls_error", "error", "condition")
  )
  stop(cond)
}

irls_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    irls_stop(msg)
  }
  invisible(TRUE)
}
