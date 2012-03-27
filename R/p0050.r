# http://projecteuler.net/problem=50

library(pracma)

p <- primes(1000000)
for (n in max(which(cumsum(p) < 1000000)):1) {
  r <- filter(p, rep(1, n))
  if (any(r %in% p)) {
    a <- r[r%in%p]
    break
  }
}


print(a)
cat(a, file = pipe('pbcopy'))

