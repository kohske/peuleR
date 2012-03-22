# http://projecteuler.net/problem=5

library(pracma)

z <- do.call("rbind",
              lapply(2:20, function(i) as.data.frame(table(as.numeric(factorize(i))))))
a <- prod(sapply(primes(20), function(i) i^max(subset(z, Var1 == i)$Freq)))

# another solution
b <- Reduce(function(a, b) LCM(a,b), 1:20, 1)

print(identical(a, b))

print(a)
cat(a, file = pipe('pbcopy'))
