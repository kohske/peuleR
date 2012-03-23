# http://projecteuler.net/problem=67

d <- readLines("http://projecteuler.net/project/triangle.txt")

d <- Filter(function(x) length(x) > 0, lapply(strsplit(d, " "), as.integer))
a <- Reduce(function(a, b) apply(embed(a, 2), 1, max) + b, rev(d))

print(a)
cat(a, file = pipe('pbcopy'))

