source("types.R")
source("errors.R")
source("interface.R")
source("core.R")
source("validation.R")
source("fast_path.R")
source("concurrency.R")
source("invariants.R")
set.seed(22)
X <- matrix(rnorm(60 * 4), nrow = 60)
y <- rnorm(60)
fits <- lasso_path_parallel(X, y, c(0.5, 0.2, 0.05))
for (i in seq_along(fits)) {
  lam <- c(0.5, 0.2, 0.05)[i]
  verify_lasso_solution(X, y, fits[[i]], lam)
}
stopifnot(sum(abs(fits[[1]]$beta)) <= sum(abs(fits[[3]]$beta)) + 1e-8)
