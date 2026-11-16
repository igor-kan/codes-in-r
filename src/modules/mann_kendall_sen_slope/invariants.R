verify_mk_invariants <- function(x) {
  res0 <- mann_kendall_sen(x)
  res1 <- mann_kendall_sen(x + 100.0)
  mk_assert(abs(res0$S - res1$S) < 1e-12, "S statistic must be shift-invariant")
  mk_assert(abs(res0$slope - res1$slope) < 1e-12, "Sen slope must be shift-invariant")
  mk_assert(abs((res1$intercept - res0$intercept) - 100.0) < 1e-10, "intercept shift failed")
  invisible(TRUE)
}
