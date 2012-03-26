# http://projecteuler.net/problem=42

d0 <- read.csv("http://projecteuler.net/project/words.txt",
               header=FALSE, stringsAsFactors = FALSE, na.strings = "")

d <- unname(unlist(d0))
d <- strsplit(d, "")
z <- 1:26
names(z) <- LETTERS
d <- sapply(d, function(i) sum(z[i]))
i <- 1
while (0.5 * (i) * (i+1) <= max(d)) i <- i + 1
a <- sum(d %in% (0.5 * (seq(i)) * (seq(i)+1)))

print(a)
cat(a, file = pipe('pbcopy'))


