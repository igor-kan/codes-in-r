verify_mann_whitney_sum <- function(x, y) {
  r1 <- wilcox_ranksum_fit(x, y)
  r2 <- wilcox_ranksum_fit(y, x)
  n12 <- as.numeric(length(x)) * as.numeric(length(y))
  wilcox_assert(abs((r1$U + r2$U) - n12) < 1e-10, "U1 + U2 != n1*n2")
  wilcox_assert(abs(r1$shift + r2$shift) < 1e-12, "Hodges-Lehmann antisymmetry violated")
  ref <- stats::wilcox.test(x, y, exact = FALSE, conf.int = TRUE)
  wilcox_assert(abs(r1$U - as.numeric(ref$statistic)) < 1e-9, "W/U mismatch vs stats::wilcox.test")
  invisible(TRUE)
}
