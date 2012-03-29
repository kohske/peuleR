# http://projecteuler.net/problem=56

# too poor...

library(gmp)

a <- max(sapply(strsplit(as.character(outer(as.bigz(1:99), 1:99, function(a, b) a^b)), ""), function(i) sum(as.numeric(i))))

print(a)
cat(a, file = pipe('pbcopy'))


