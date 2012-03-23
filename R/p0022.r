# http://projecteuler.net/problem=22

d0 <- read.csv("http://projecteuler.net/project/names.txt",
               header=FALSE, stringsAsFactors = FALSE, na.strings = "")

d <- sort(unname(unlist(d0)))
d <- strsplit(d, "")
z <- 1:26
names(z) <- LETTERS
d <- sapply(d, function(i) sum(z[i]))
a <- sum(seq_along(d) *  d)

print(a)
cat(a, file = pipe('pbcopy'))

