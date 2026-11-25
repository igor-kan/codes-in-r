jack_res <- function(theta_hat, bias, jack_se) {
  structure(list(theta_hat = theta_hat, bias = bias, jack_se = jack_se), class = "jack_res")
}

make_module_meta <- function() {
  structure(list(slug = "jackknife_bias_r_d60", version = 1L), class = "r_mod_meta")
}
