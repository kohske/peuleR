# http://projecteuler.net/problem=29

a <- length(unique(c(outer(2:100, 2:100, function(x, y) x^y))))

print(a)
cat(a, file = pipe('pbcopy'))

