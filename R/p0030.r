# http://projecteuler.net/problem=30

i <- 2
a <- 0
while (ceiling(log(9^5*i, 10)) >= i) {
  n <- do.call("expand.grid", rep(list(0:9), i))
  n <- n[n[, 1] > 0, ]
  s <- rowSums(n^5)
  m <- t(10^((i-1):0)) %*% t(n)
  a <- a + sum(s[s==m])
  i <- i + 1
}

print(a)
cat(a, file = pipe('pbcopy'))

