verify_matches_base_cor <- function(x, y, res) {
  stopifnot(abs(res$rho - cor(x, y, method = 'spearman')) < 1e-12)
  stopifnot(abs(res$tau_b - cor(x, y, method = 'kendall')) < 1e-12)
}
