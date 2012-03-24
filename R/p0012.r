# http://projecteuler.net/problem=13

# too poor...

library(gmp)

a0 <- a <- 1
while (prod(table(as.numeric(factorize(a)))+1) < 500) {a0 <- a0 + 1; a <- a + a0}

print(a)
cat(a, file = pipe('pbcopy'))
