# http://projecteuler.net/problem=41

# inelegant...

library(pracma) # perms
library(gmp)

for (i in 9:1) {
  b <- c(10^((i-1):0) %*% t(perms(1:i)))
  d <- b[isprime(b) != 0]
  if (length(d) > 0) {
    a <- max(d)
    break
  }
}

print(a)
cat(a, file = pipe('pbcopy'))



 
