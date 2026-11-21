partial_corr_xyz <- function(x, y, z) {
  r_xy <- stats::cor(x, y)
  r_xz <- stats::cor(x, z)
  r_yz <- stats::cor(y, z)
  den <- sqrt((1.0 - r_xz^2) * (1.0 - r_yz^2))
  if (den < 1e-14) return(0.0)
  (r_xy - r_xz * r_yz) / den
}
