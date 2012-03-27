# http://projecteuler.net/problem=50

# not elegant...

library(pracma)

d <- 1
g <- c()
a <- 0
while (a == 0) {
  s <- primes(10^d)
  for (e in seq(d)) {
    x <- combn(d, e)
    for (n in seq(ncol(x))) {
      p <- rep(list(0:9), d); p[x[, n]] <- 0
      r <- rep(0, d); r[x[, n]] <- 1
      y <- 10^((d-1):0) %*% t(do.call("expand.grid", p))
      b <- (10^((d-1):0) %*% r) * 0:9
      m <- outer(c(y), b, "+")
      z <- m %in% s
      dim(z) <- dim(m)
      f <- which(rowSums(z) >= 8)
      if (length(f) > 0 && rowSums((m[f, ] > 10^(d-1)) & (z[f, ])) == 8) {
        g <- c(g, min(m[f, ][(m[f, ] > 10^(d-1)) & (z[f, ])]))
      }
    }
  }
  if (length(g) > 0) a <- min(g)
  d <- d + 1
}

print(a)
cat(a, file = pipe('pbcopy'))

