chi2_stat <- function(obs, probs) {
  probs <- probs / sum(probs)
  exp_cnt <- sum(obs) * probs
  sum((obs - exp_cnt)^2 / exp_cnt)
}
