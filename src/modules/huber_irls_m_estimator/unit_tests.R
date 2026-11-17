source('types.R')
source('errors.R')
source('core.R')
x <- 1:12
y <- 1 + 2*x
y[12] <- 500
X <- cbind(1, x)
h <- fit_huber_irls(X, y)
stopifnot(abs(h$beta[2] - 2.0) < 0.2)
