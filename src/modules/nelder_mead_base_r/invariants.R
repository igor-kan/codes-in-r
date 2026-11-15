verify_nm_descent <- function(fn, x0, res) {
  stopifnot(res$value <= fn(x0) + 1e-12)
  stopifnot(all(is.finite(res$par)))
  invisible(TRUE)
}
