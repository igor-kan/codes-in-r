source("types.R")
source("errors.R")
source("validation.R")
source("core.R")
source("invariants.R")
check_numeric_vec(c(1.0, 2.0))
x <- 1:10
y <- 2 + 3 * x
y[c(8, 9, 10)] <- c(500, -400, 999)
r <- siegel_repeated_median(x, y)
stopifnot(abs(r$slope - 3.0) < 1e-12 && abs(r$intercept - 2.0) < 1e-12)
ensure_stat_invariant(TRUE)
