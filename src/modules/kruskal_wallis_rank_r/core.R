kruskal_wallis_h <- function(values, groups) {
  n <- length(values)
  rks <- rank(values, ties.method = "average")
  lvls <- unique(groups); k <- length(lvls)
  s_term <- 0.0
  for (g in lvls) {
    rg <- rks[groups == g]
    s_term <- s_term + (sum(rg)^2) / length(rg)
  }
  h_raw <- (12.0 / (n * (n + 1.0))) * s_term - 3.0 * (n + 1.0)
  ties <- table(values)
  c_tie <- 1.0 - sum(ties^3 - ties) / (n^3 - n)
  kw_res(h_raw / c_tie, k - 1L)
}
