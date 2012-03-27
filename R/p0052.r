# http://projecteuler.net/problem=52

# too poor, too slow...

a <- c()
d <- 2
while (length(a) == 0) {
  m <- do.call("expand.grid", c(list(1), rep(list(0:9), d-1)))
  n <- 1:6 %*% (10^((d-1):0) %*% t(m))
  s <- sapply(strsplit(as.character(n), ""), function(i) paste(sort(i), collapse = ""))
  dim(s) <- dim(n)
  r <- apply(s, 2, function(i) length(unique(i)))
  a <- `if`(any(r==1), min(n[1, r==1]), c())
  d <- d + 1
}

print(a)
cat(a, file = pipe('pbcopy'))


