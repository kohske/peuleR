# http://projecteuler.net/problem=33

library(gmp)

j <- 1
for (n in 10:99) {
  if (n%%11 == 0 || n%%10 == 0) next
  for (d in (n+1):99) {
    if (d%%11 == 0 || d%%10 == 0) next
    p <- table(strsplit(paste(n, d), ""))
    if (max(p) == 1 || sum(p == 2) > 1) next
    r <- as.numeric(strsplit(gsub(names(p[p==2]), "", paste(n, d)), " ")[[1]])
    if (any(r == 0)) next
    if(as.bigq(n, d) == as.bigq(r[1], r[2])) j <- j * as.bigq(r[1], r[2])
  }
}
a <- as.numeric(denominator(j))

print(a)
cat(a, file = pipe('pbcopy'))

