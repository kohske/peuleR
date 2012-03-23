# http://projecteuler.net/problem=23

# should be optimized

library(pracma)

f <- function(n) {
  z <- factorize(n)
  r <- unique(apply(z * t(do.call("expand.grid", rep(list(0:1), length(z)))), 2, function(x) prod(x[x>0])))
  sum(r[r!=n]) > n
}

b <- which(Vectorize(f)(seq(28123)))
a <- sum(seq(28123)[!seq(28123) %in% sort(c(outer(b, b, "+")))])

print(a)
cat(a, file = pipe('pbcopy'))

