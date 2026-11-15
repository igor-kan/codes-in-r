ks_stop <- function(msg, subclass = "ks_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "ks_error", "error", "condition")
  )
  stop(cond)
}

ks_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    ks_stop(msg)
  }
  invisible(TRUE)
}
