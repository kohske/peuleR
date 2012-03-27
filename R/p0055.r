# http://projecteuler.net/problem=55

# too poor...

library(gmp)

r <- rep(0, 9999)
for (k in 1:9999) {
  if (r[k] == 1) next
  i <- as.bigz(k)
  h <- rep(NA, 50)
  for (p in 1:50) {
    if (i < 10000) h[p] <- as.integer(i)
    i <- i + as.numeric(paste(rev(strsplit(as.character(i), "")[[1]]), collapse = ""))
    j <- strsplit(as.character(i), "")[[1]]
    if(all((j == rev(j))[1:(length(j)/2)])) r[h] <- 1
  }
}
a <- sum(r==0)

print(a)
cat(a, file = pipe('pbcopy'))


