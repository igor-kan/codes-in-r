lasso_stop <- function(msg, subclass = "lasso_error") {
  cond <- structure(
    list(message = as.character(msg), call = sys.call(-1)),
    class = c(subclass, "lasso_error", "error", "condition")
  )
  stop(cond)
}

lasso_assert <- function(ok, msg) {
  if (!isTRUE(ok)) {
    lasso_stop(msg)
  }
  invisible(TRUE)
}
