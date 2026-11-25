kalman_trace <- function(means, vars, gains) {
  structure(list(means = means, vars = vars, gains = gains), class = "kalman_trace")
}

make_module_meta <- function() {
  structure(list(slug = "kalman_1d_filter_r_d60", version = 1L), class = "r_mod_meta")
}
