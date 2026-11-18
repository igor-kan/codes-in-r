jonckheere_terpstra <- function(values, groups) {
  lvls <- sort(unique(groups))
  k <- length(lvls)
  u_tot <- 0.0
  for (a in 1:(k - 1L)) {
    xa <- values[groups == lvls[a]]
    for (b in (a + 1L):k) {
      xb <- values[groups == lvls[b]]
      for (va in xa) {
        u_tot <- u_tot + sum(xb > va) + 0.5 * sum(xb == va)
      }
    }
  }
  n <- length(values)
  ns <- as.numeric(table(groups))
  mu <- (n * n - sum(ns * ns)) / 4.0
  var_j <- (n * n * (2 * n + 3) - sum(ns * ns * (2 * ns + 3))) / 72.0
  jt_res(u_tot, (u_tot - mu) / sqrt(var_j))
}
