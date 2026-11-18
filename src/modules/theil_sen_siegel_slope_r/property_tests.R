source("types.R")
source("errors.R")
source("fast_path.R")
source("core.R")
stopifnot(abs(fast_centered_ss(c(1, 2, 3)) - 2.0) < 1e-12)
x <- 1:6; y <- 5 - 2 * x
r <- siegel_repeated_median(x, y)
stopifnot(abs(r$slope + 2.0) < 1e-12)
