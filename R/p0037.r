# http://projecteuler.net/problem=37

library(gmp)

n <- 0
p <- 7
a <- 0
while (TRUE) {
  p <- as.numeric(nextprime(p))
  d <- ceiling(log(p, 10))
  if (is.null(Find(function(i)
                   !isprime(floor(p/i)) ||
                   !isprime(p%%i), 10^(1:(d-1))))) {
    n <- n + 1
    a <- a + p
    if (n == 11) break
  }
}

print(a)
cat(a, file = pipe('pbcopy'))

