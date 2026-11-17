fast_bh_reject <- function(p, alpha) {
  adj <- adjust_pvals(p)$bh
  sum(adj <= alpha, na.rm = TRUE)
}
