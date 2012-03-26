# http://projecteuler.net/problem=36

library(sfsmisc) # digitsBase
library(pracma) # flipud

s <- list(1:9, 0:9, 0:9)

a <- 0
for (m in list(c(1), c(1, 1), c(1, 2, 1), c(1, 2, 2, 1), c(1, 2, 3, 2, 1), c(1, 2, 3, 3, 2, 1))) {
  u <- 10^((length(m)-1):0) %*% t(do.call("expand.grid", s[unique(m)])[m])
  d <- digitsBase(u, 2)
  a <- a + sum(u[sub("^0*", "", apply(d, 2, paste, collapse = "")) ==
                 sub("0*$", "", apply(flipud(d), 2, paste, collapse = ""))])
}

print(a)
cat(a, file = pipe('pbcopy'))

