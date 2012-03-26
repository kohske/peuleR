# http://projecteuler.net/problem=43

library(pracma)

z <- perms(0:9)
p <- z[(z[, 1] != 0), ]
r <- primes(17)
b <- Reduce(function(b, i) b * as.numeric((10^(2:0) %*% t(p[, i+(1:3)]))%%r[i] == 0),
            seq_along(r), rep(1, nrow(p)))
a <- sum(10^(9:0) %*% t(p[b != 0, ]))

print(a)
cat(a, file = pipe('pbcopy'))


