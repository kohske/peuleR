# http://projecteuler.net/problem=35

library(gmp)

a <- 13
for (d in 3:6) {
  s <- t(do.call("expand.grid", rep(list(c(1, 3, 7, 9)), d)))
  p <- 1:d
  r <- rep(1, ncol(s))
  for (i in 1:d) {
    r <- r * isprime(10^(rev(p)-1) %*% s)
    p <- p[c(2:d, 1)]
  }
  a <- a + sum(r!=0)
}

print(a)
cat(a, file = pipe('pbcopy'))

