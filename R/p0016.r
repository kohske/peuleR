# http://projecteuler.net/problem=16

# should write non-bigz version

library(gmp)

a <- sum(as.integer(strsplit(as.character(as.bigz(2)^1000), "")[[1]]))

print(a)
cat(a, file = pipe('pbcopy'))

