wilcox_stop <- function(msg, subclass = "wilcox_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "wilcox_error", "error", "condition")
  )
  stop(cond)
}

wilcox_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    wilcox_stop(msg)
  }
  invisible(TRUE)
}
