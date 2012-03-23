# http://projecteuler.net/problem=20

# should write non-bigz version

library(gmp)

a <- sum(as.integer(strsplit(as.character(factorialZ(100)), "")[[1]]))

print(a)
cat(a, file = pipe('pbcopy'))

