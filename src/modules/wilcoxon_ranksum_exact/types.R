new_wilcox_result <- function(w_stat, u_stat, z_score, p_value, hl_shift) {
  structure(
    list(W = w_stat, U = u_stat, z = z_score, p_value = p_value, shift = hl_shift),
    class = "wilcox_rs_result"
  )
}
