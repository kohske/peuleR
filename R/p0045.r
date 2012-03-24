# http://projecteuler.net/problem=45

# should rewrite in R way...

k <- 40755
i1 <- (-1+sqrt(1+4*2*k))/2 + 1
i2 <- (1+sqrt(1+4*3*2*k))/(2*3) + 1
i3 <- (1+sqrt(1+4*2*k))/(2*2) + 1
f1 <- function(n) n*(n+1)/2
f2 <- function(n) n*(3*n-1)/2
f3 <- function(n) n*(2*n-1)
a <- 0
while (TRUE) {
  while (f2(i2) < f3(i3)) i2 <- i2 + 1
  if (f2(i2) == f3(i3)) {
    while (f1(i1) < f2(i2)) i1 <- i1 + 1
    if (f1(i1) == f2(i2)) {
      a <- f1(i1)
    }
  }
  if (a > 0) break
  i3 <- i3 + 1
}

print(a)
cat(a, file = pipe('pbcopy'))

