verify_mgs_qr <- function(A, qr_obj) {
  recon <- sqrt(sum((A - qr_obj$Q %*% qr_obj$R)^2))
  orth <- ortho_error_norm(qr_obj$Q)
  stopifnot(recon < 1e-10)
  stopifnot(orth < 1e-11)
  invisible(TRUE)
}
