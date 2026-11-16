cusum_stop <- function(msg, subclass = "cusum_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "cusum_error", "error", "condition")
  )
  stop(cond)
}

cusum_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    cusum_stop(msg)
  }
  invisible(TRUE)
}
