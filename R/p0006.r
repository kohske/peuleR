# http://projecteuler.net/problem=6

a <- sum(1:100)^2 - sum((1:100)^2)

print(a)
cat(a, file = pipe('pbcopy'))
