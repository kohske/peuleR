# http://projecteuler.net/problem=47

library(gmp)
p <- 1
while (TRUE) {
  d <- rle(Vectorize(function(x)length(unique(as.numeric(factorize(x)))))(seq(p, p + 9999)))
  r <- d$length == 4 & d$values == 4
  if (sum(r) > 0) {
    a <- p + sum(d$length[1:(which(r)[1]-1)])
    break
  }
  p <- p + 10000
}

print(a)
cat(a, file = pipe('pbcopy'))

