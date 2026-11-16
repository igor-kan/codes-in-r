validate_mk_series <- function(x) {
  mk_assert(is.numeric(x) && length(x) >= 3L, "series must have >= 3 numeric elements")
  mk_assert(all(is.finite(x)), "series contains NA or non-finite values")
  invisible(TRUE)
}
