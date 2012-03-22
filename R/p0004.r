# http://projecteuler.net/problem=4

for (a in sort(outer(1:999, 1:999), TRUE)) {
  b <- as.character(a)
  if (b == paste(rev(sapply(1:nchar(b), function(i) substr(b, i, i))), collapse = ""))
    break
}

print(a)
cat(a, file = pipe('pbcopy'))
