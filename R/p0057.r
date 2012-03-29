# http://projecteuler.net/problem=57

# too poor...

library(gmp)

r <- rep(as.bigq(0), 1000)
r[1] <- as.bigq(3, 2)
for (i in 2:1000) {
  r[i] <- 1 + as.bigq(1, (r[i-1] + 1))
}
a <- sum(floor(log(numerator(r), 10))/floor(log(denominator(r), 10)) > 1, na.rm = T)

# recursive version
a <- (function(i, s, a, b) {
	if (floor(log(a, 10)) > floor(log(b, 10))) s <- s + 1
	if (i == 0) s
	else Recall(i-1, s, 2*b+a, a+b)
      })(1000, 0, as.bigz(3), as.bigz(2))

print(a)
cat(a, file = pipe('pbcopy'))


