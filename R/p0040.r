# http://projecteuler.net/problem=36

# inelegant...

b <- 1
f <- function(n) sum(1:n*9*10^(0:(n-1)))
while (sum(f(b)) < 1e6) b <- b + 1
b <- Vectorize(f)(1:(b-1))
s <- paste(seq(floor((1e6 - max(b)) / (length(b) + 1)) + 1e5), collapse = "")
a <- prod(as.numeric(sapply(10^(0:6), function(i) substr(s, i, i))))

print(a)
cat(a, file = pipe('pbcopy'))



 
