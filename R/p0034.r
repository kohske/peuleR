# http://projecteuler.net/problem=34

p <- factorial(0:9)
n <- floor(log(p, 10)) + 1

b <- 10
while ((function(a) {b <- 0; while(a >= 1) {b <- b + factorial(a%%10); a <- floor(a / 10)}; b})(b-1) >= b*10) b <- b * 10

a <- 0
for (d in 2:log(b, 10)) {
  s <- rowSums(do.call("expand.grid", rep(list(p[n<=d]), d)))
  o <- do.call("expand.grid", rep(list(which(n<=d)-1), d))[floor(log(s, 10)) + 1 == d, ]
  s <- s[floor(log(s, 10)) + 1 == d]
  o <- 10^((d-1):0) %*% t(o)
  a <- a + sum(o[o==s])
}

print(a)
cat(a, file = pipe('pbcopy'))

