source("types.R")
source("errors.R")
source("validation.R")
source("core.R")
source("invariants.R")
check_numeric_vec(c(1.0, 2.0))
X <- rbind(
  c(1, 2, 3),
  c(1, 3, 2),
  c(2, 1, 3),
  c(3, 1, 2),
  c(2, 3, 1),
  c(3, 2, 1)
)
r <- friedman_rank_test(X)
ref <- friedman.test(X)
stopifnot(abs(r$statistic - as.numeric(ref$statistic)) < 1e-12)
stopifnot(abs(r$p_value - as.numeric(ref$p.value)) < 1e-12)
stopifnot(r$df == 2L)
stopifnot(all(abs(r$mean_ranks - c(2.0, 2.0, 2.0)) < 1e-12))
Xt <- rbind(
  c(1, 1, 2),
  c(2, 2, 3),
  c(1, 2, 2),
  c(3, 3, 1)
)
rt <- friedman_rank_test(Xt)
reft <- friedman.test(Xt)
stopifnot(abs(rt$statistic - as.numeric(reft$statistic)) < 1e-12)
stopifnot(abs(rt$p_value - as.numeric(reft$p.value)) < 1e-12)
ensure_stat_invariant(TRUE)
