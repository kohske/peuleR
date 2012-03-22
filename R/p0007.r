# http://projecteuler.net/problem=7

library(pracma)

a <- 1
for (i in 1:10001) {
  a <- nextprime(a)
}
a <- as.numeric(a)

# HOF version
b <- as.numeric(Reduce(function(i, ...) nextprime(i), seq(10001), 1))

print(identical(a, b))

print(a)
cat(a, file = pipe('pbcopy'))
