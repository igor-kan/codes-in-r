source("types.R")
source("errors.R")
source("validation.R")
source("core.R")
source("invariants.R")
check_numeric_vec(c(1.0, 2.0))
X <- rbind(
  c(1, 1, 1),
  c(1, 0, 1),
  c(1, 1, 0),
  c(0, 1, 1),
  c(1, 1, 0),
  c(1, 0, 1)
)
r <- cochran_q_test(X)
stopifnot(abs(r$q - 0.4) < 1e-12)
stopifnot(r$df == 2L)
stopifnot(abs(r$p_value - pchisq(0.4, 2L, lower.tail = FALSE)) < 1e-12)
ensure_stat_invariant(TRUE)
