source("types.R")
source("errors.R")
source("fast_path.R")
source("core.R")
stopifnot(abs(fast_centered_ss(c(1, 2, 3)) - 2.0) < 1e-12)
xs <- seq(0, 10, length.out = 6)
ys <- 3.0 * xs - 4.0
stopifnot(abs(loess_predict_point(xs, ys, 5.0, span = 0.9) - 11.0) < 1e-9)
