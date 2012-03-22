# http://projecteuler.net/problem=3

# too deep nest
f1 <- function(n, x, a) {
  if (n%%x == 0) {
    m <- n/x
    if (m == 1) c(a, x)
    else Recall(m, x, c(a, x))
  } else {
    Recall(n, x+1, a)
  }
}

f2 <- function(n) {
  x <- 2
  a <- c()
  while(TRUE) {
    if (n%%x == 0) {
      n <- n/x
      if (n == 1) return(c(a, x))
      else a <- c(a, x)
    } else {
      x <- x+1
    }
  }
}

a <- max(f2(600851475143))

print(a)
cat(a, file = pipe('pbcopy'))
