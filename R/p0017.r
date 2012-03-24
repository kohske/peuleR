# http://projecteuler.net/problem=17

# not elegent?

r <- rep(0, 100)
r[c(1:20, 30, 40, 50, 60, 70, 80, 90, 100)] <-
  c(3, 3, 5, 4, 4, 3, 5, 5, 4, 3,
    6, 6, 8, 8, 7, 7, 9, 8, 8, 6,
    6, 5, 5, 5, 7, 6, 6, 7)

i <- which(r == 0)
r[i] <- mapply(function(j, k) sum(r[c(j, k)]), i-i%%10, i%%10)

a <- sum(r[1:99]) * 10 + sum(r[1:9]) * 100 + r[100] * 900 + 3 * (900 - 9) + 11

print(a)
cat(a, file = pipe('pbcopy'))
