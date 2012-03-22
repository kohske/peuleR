# http://projecteuler.net/problem=10

library(pracma)

a <- sum(primes(2000000-1))

print(a)
cat(a, file = pipe('pbcopy'))
