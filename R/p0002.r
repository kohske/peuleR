# http://projecteuler.net/problem=2

f <- function(a) {
  n <- sum(a[c(length(a), length(a)-1)])
  if (n < 4000000) Recall(c(a, n)) else a
}
a <- f(c(1, 2))
a <- sum(a[a%%2==0])

print(a)
cat(a, file = pipe('pbcopy'))
