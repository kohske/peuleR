# http://projecteuler.net/problem=44

# bad answer. should be generalized...

f <- function(n) n * (3*n - 1) / 2

N <- 10000
m <- f(1:(N * sqrt(2)))
p <- m[1:N]

for (i in p) {
  q <- p[p>i]
  d <- abs(i - q)
  r <- ((i + q) %in% m) & (d %in% m)
  if (sum(r) > 0) {
    a <- d[r]
    break
  }
}

print(a)
cat(a, file = pipe('pbcopy'))


