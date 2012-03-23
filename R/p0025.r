# http://projecteuler.net/problem=25

# should be improved using R-style

u <- rep(0, 999)
for (i in 1:999) {
  n <- 10
  r <- 0
  m <- c()
  while (TRUE) {
    n <- (n%%i) * 10
    if (n == 0) break
    if (n %in% m) {
      u[i] <- r
      break
    }
    m <- c(m, n)
    r <- r + 1
  }
}
a <- which.max(u)

print(a)
cat(a, file = pipe('pbcopy'))

