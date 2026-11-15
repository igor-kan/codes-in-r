fit_gaussian_em <- function(x, config = new_gmm_config()) {
  UseMethod("fit_gaussian_em")
}

predict_posterior <- function(object, x, ...) {
  UseMethod("predict_posterior")
}
