# http://projecteuler.net/problem=60

library(gmp)
i <- 2000
p <- pracma::primes(i); p = p[-1]
z = outer(p, p, function(a, b) a*(10^floor(log10(b)+1))+b)
y = matrix(isprime(z), nrow(z), ncol(z)) > 0
diag(y) = TRUE

s = c()

s2 = combn(length(p), 2)
a2 = apply(s2, 2, function(k) all(y[k, k]))
b2 = o[, which(a2), drop=FALSE]

for (i in 1:ncol(b2)) {
  if (max(b2[,i] > (length(p)-1))) next
  s3 = sapply((max(b2[,i])+1):length(p), function(x) c(b2[, i], x))
  a3 = apply(s3, 2, function(k) all(y[k, k]))
  b3 = s3[, which(a3), drop=FALSE]
  if (length(b3) == 0) next
  b3 = b3[, colSums(apply(b3, 2, duplicated)) == 0, drop=FALSE]
  if (length(b3) == 0) next
  
  for (i4 in 1:ncol(b3)) {
    if (max(b3[,i4] > (length(p)-1))) next
    s4 = sapply((max(b3[,i4])+1):length(p), function(x) c(b3[, i4], x))
    a4 = apply(s4, 2, function(k) all(y[k, k]))
    b4 = s4[, which(a4), drop=FALSE]
    if (length(b4) == 0) next
    b4 = b4[, colSums(apply(b4, 2, duplicated)) == 0, drop=FALSE]
    if (length(b4) == 0) next
    
    for (i5 in 1:ncol(b4)) {
      if (max(b4[,i5] > (length(p)-1))) next
      s5 = sapply((max(b4[,i5])+1):length(p), function(x) c(b4[, i5], x))
      a5 = apply(s5, 2, function(k) all(y[k, k]))
      b5 = s5[, which(a5), drop=FALSE]
      if (length(b5) == 0) next
      b5 = b5[, colSums(apply(b5, 2, duplicated)) == 0, drop=FALSE]
      if (length(b5) == 0) next
      print(b5)
      s = c(s, apply(b5, 2, function(i) sum(p[i])))
    }
  }
}
cat(s, file = pipe('pbcopy'))

