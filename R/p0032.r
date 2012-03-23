# http://projecteuler.net/problem=32

library(pracma)

a <- 0
for (i in 1:9) {
  for (j in 1:9) {
    if (log(10^(i+j), 10) > 10-i-j) break
    if (log(10^(i+j), 10) < 10-i-j-2) break
    p <- combn(1:9, i+j)
    a <- a + sum(unique(unlist(apply(p, 2, function(s) {
      m <- t(perms(s))
      intersect(c((t(10^((i-1):0)) %*% m[1:i, ]) * (t(10^((j-1):0)) %*% m[(i+1):nrow(m), ])),
                c(10^((8-i-j):0) %*% t(perms(setdiff(1:9, s)))))
    }))))
  }
}

print(a)
cat(a, file = pipe('pbcopy'))

