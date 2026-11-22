source("types.R")
source("errors.R")
source("validation.R")
source("core.R")
source("invariants.R")
check_numeric_vec(c(1.0, 2.0))
xs <- c(3, 7, 8, 5, 12, 14, 21, 13, 18)
for (pr in c(0.0, 0.25, 0.5, 0.75, 1.0)) {
  got <- quantile_type7(xs, pr)
  ref <- as.numeric(stats::quantile(xs, pr, type = 7, names = FALSE))
  stopifnot(abs(got - ref) < 1e-12)
}
ensure_stat_invariant(TRUE)
