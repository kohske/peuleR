# http://projecteuler.net/problem=28

a <- 1 + sum(cumsum(rep(seq(2, 1001, 2), each=4)) + 1)

print(a)
cat(a, file = pipe('pbcopy'))

