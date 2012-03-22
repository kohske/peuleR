# http://projecteuler.net/problem=13

# can be optimized not to calculate more than once

N <- 1000000
h <- integer(N)
h[1] <- 1
for (s in 2:N) {
  r <- 0
  n <- s
  while (TRUE) {
    if (n < s) {
      h[s] <- r + h[n]
      break
    }
    r <- r + 1    
    if (n %% 2 == 0) n <- n/2
    else n <- 3*n + 1
  }
}
a <- which.max(h)

print(a)
cat(a, file = pipe('pbcopy'))
