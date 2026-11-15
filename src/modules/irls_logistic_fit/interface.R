fit_logistic <- function(x, y, config = new_irls_config()) {
  UseMethod("fit_logistic")
}

predict_prob <- function(object, newdata, ...) {
  UseMethod("predict_prob")
}
