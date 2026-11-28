blomqvist_beta <- function(x, y) {
  if (length(x) != length(y)) {
    blomqvist_stop("dim", "x and y must have equal length")
  }
  mx <- median(x)
  my <- median(y)
  z <- (x - mx) * (y - my)
  concordant <- sum(z > 0)
  discordant <- sum(z < 0)
  used <- concordant + discordant
  beta <- if (used > 0) (concordant - discordant) / used else 0.0
  blomqvist_result(beta, concordant, discordant)
}
