multistart_gaussian_em <- function(x, ks) {
  lapply(ks, function(k) fit_gaussian_em(x, new_gmm_config(k = k)))
}
