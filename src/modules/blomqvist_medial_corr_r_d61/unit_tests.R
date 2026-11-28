source("types.R")
source("errors.R")
source("validation.R")
source("core.R")
source("invariants.R")
check_numeric_vec(c(1.0, 2.0))
x <- 1:6
y <- 1:6
r <- blomqvist_beta(x, y)
stopifnot(abs(r$beta - 1.0) < 1e-12)
r <- blomqvist_beta(x, -y)
stopifnot(abs(r$beta + 1.0) < 1e-12)
stopifnot(r$concordant + r$discordant == 6L)
ensure_stat_invariant(TRUE)
