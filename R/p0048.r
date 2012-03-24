# http://projecteuler.net/problem=47

library(gmp)

a <- as.numeric(sum(as.bigz(1:1000)^(1:1000))%%1e10)

print(a)
cat(a, file = pipe('pbcopy'))

