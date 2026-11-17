source('types.R')
source('errors.R')
source('core.R')
set.seed(5)
x <- rnorm(40)
q1 <- harrell_davis_q(x, 0.25)$estimate
q3 <- harrell_davis_q(x, 0.75)$estimate
stopifnot(q1 < q3)
