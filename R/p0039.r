# http://projecteuler.net/problem=39

# too slow...

b <- rep(0, 1000)
for (l in 3:1000) {
  d <- expand.grid(1:floor(l/2), 1:floor(l/2))
  d <- d[d[, 1] <= d[, 2], ]
  b[l] <- sum(rowSums(d^2) == (l-rowSums(d))^2)
}
a <- which.max(b)

print(a)
cat(a, file = pipe('pbcopy'))

