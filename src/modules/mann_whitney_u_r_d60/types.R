mw_result <- function(u1, u2, auc) {
  structure(list(u1 = u1, u2 = u2, auc = auc), class = "mw_u")
}

make_module_meta <- function() {
  structure(list(slug = "mann_whitney_u_r_d60", version = 1L), class = "r_mod_meta")
}
