roc_auc_exact <- function(scores, labels) {
  pos <- labels == 1L
  n_pos <- sum(pos); n_neg <- sum(!pos)
  if (n_pos == 0L || n_neg == 0L) roc_auc_error <- 0.5
  r <- rank(scores, ties.method = "average")
  (sum(r[pos]) - n_pos * (n_pos + 1.0) / 2.0) / (n_pos * n_neg)
}
