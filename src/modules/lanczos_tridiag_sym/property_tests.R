source("types.R")
source("errors.R")
source("interface.R")
source("core.R")
source("validation.R")
source("fast_path.R")
source("concurrency.R")
source("invariants.R")
n <- 20
A <- diag(1:n)
A[cbind(1:(n - 1), 2:n)] <- 0.25
A[cbind(2:n, 1:(n - 1))] <- 0.25
top_exact <- max(eigen(A, symmetric = TRUE, only.values = TRUE)$values)
top_ritz <- lanczos_k_sweep(A, c(4L, 8L, 12L))
stopifnot(abs(top_ritz[[3L]] - top_exact) <= abs(top_ritz[[1L]] - top_exact) + 1e-12)
