# http://projecteuler.net/problem=1

a <- sum((1:999)[(1:999)%%3 * (1:999)%%5 == 0])

print(a)
cat(a, file = pipe('pbcopy'))
