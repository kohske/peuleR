# http://projecteuler.net/problem=46

# should rewrite in R way...

library(gmp)

a <- 33

while (TRUE) {
  a <- a + 2
  if (isprime(a)) next
  b <- 1
  f <- FALSE
  while (b < a) {
    if (sqrt((a-b)/2)%%1 == 0) {
      f <- TRUE
      break
    }
    b <- as.numeric(nextprime(b))
  }
  if (!f) break
}

print(a)
cat(a, file = pipe('pbcopy'))

