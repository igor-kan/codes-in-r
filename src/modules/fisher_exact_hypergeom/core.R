fisher_2x2 <- function(a, b, c_val, d) {
  r1 <- a + b; c1 <- a + c_val; n <- a + b + c_val + d
  lo <- max(0L, r1 + c1 - n); hi <- min(r1, c1)
  ks <- lo:hi
  ps <- dhyper(ks, r1, n - r1, c1)
  p_obs <- dhyper(a, r1, n - r1, c1)
  fisher_res(p_obs, sum(ps[ps <= p_obs * (1 + 1e-12)]))
}
