adjust_pvals.numeric <- function(p) {
  validate_pvals(p)
  m <- length(p)
  ord <- order(p, decreasing = TRUE)
  ro <- order(ord)
  raw_bh <- (m / seq(m, 1L, by = -1L)) * p[ord]
  bh <- pmin(1.0, cummin(raw_bh))[ro]

  ord_asc <- order(p)
  ro_asc <- order(ord_asc)
  raw_holm <- (m - seq_len(m) + 1.0) * p[ord_asc]
  holm <- pmin(1.0, cummax(raw_holm))[ro_asc]
  fdr_report(bh, holm)
}
