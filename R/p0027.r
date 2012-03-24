# http://projecteuler.net/problem=27

# can be optimized more???

library(gmp)

j <- 0
p <- pracma::primes(999)
for (m in -999:999) {
  for (n in p[isprime(p + m + 1) != 0]) {
    r <- rle(isprime((0:79)^2 + m * (0:79) + n))
    s <- r$length[1]*r$values[1]
    if (s > j) {
      j <- s
      a <- m * n
    }
  }
}

print(a)
cat(a, file = pipe('pbcopy'))

