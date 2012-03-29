# http://projecteuler.net/problem=58

library(gmp)

m <- 0
n <- 1
i <- 2
s <- 0
while (TRUE) {
  r <- (cumsum(c(s, rep(i, 4))) + 1)[-1]
  p <- sum(isprime(r) !=0)
  m <- m + p
  n <- n + 4
  if (m/n < 0.1) break
  s <- r[4]-1
  i <- i + 2
}
a <- i+1
    
print(a)
cat(a, file = pipe('pbcopy'))

