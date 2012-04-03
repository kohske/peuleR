# http://projecteuler.net/problem=63

f <- function(x, n) floor(log(x^n, 10)) + 1 == n

a <- 0
for (b in 9:1) {
  n <- 1
  while (TRUE) {
    if (f(b, n)) a <- a+1
    else break
    n <- n + 1
  }
}

print(a)
cat(a, file = pipe('pbcopy'))

