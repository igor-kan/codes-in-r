gmm_stop <- function(msg, subclass = "gmm_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "gmm_error", "error", "condition")
  )
  stop(cond)
}

gmm_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    gmm_stop(msg)
  }
  invisible(TRUE)
}
