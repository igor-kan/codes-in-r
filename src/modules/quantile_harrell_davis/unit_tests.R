source('types.R')
source('errors.R')
source('core.R')
x <- 1:21
h <- harrell_davis_q(x, 0.5)
stopifnot(abs(sum(h$weights) - 1.0) < 1e-13 && abs(h$estimate - 11.0) < 1e-10)
