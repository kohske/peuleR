# http://projecteuler.net/problem=21

library(pracma)

r <- c(1, Vectorize(function(x) sigma(x, p = T))(2:10000))
a <- sum(which(r!=1 & r != 1:10000 & 1:10000 == r[r[1:10000]]))

print(a)
cat(a, file = pipe('pbcopy'))
