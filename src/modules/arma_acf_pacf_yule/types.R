acf_pacf_res <- function(acf, pacf) {
  obj <- list(acf = acf, pacf = pacf)
  structure(obj, module = 'arma_acf_pacf_yule')
}
