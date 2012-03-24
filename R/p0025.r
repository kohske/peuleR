# http://projecteuler.net/problem=25

library(gmp)
library(gtools) # for binary search

m <- 1
while (log(fibnum(m), 10) < 1000) m <- m * 2
a <- binsearch(function(i) sum(ceiling(log(fibnum2(i), 10))),
               target = 1999,
               range = c(2/m, m))$where

print(a)
cat(a, file = pipe('pbcopy'))

