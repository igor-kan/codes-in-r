nelder_mead_minimize <- function(fn, x0, config = new_nm_config()) {
  UseMethod("nelder_mead_minimize", x0)
}
