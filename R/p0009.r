# http://projecteuler.net/problem=9

library(plyr)

# can be optimized by reducing a and b so that they don't have duplicates.
m <- mutate(expand.grid(a = 1:1000, b = 1:1000),
            c = 1000 - a - b,
            p = c^2 == a^2 + b^2)
a <- do.call("prod", subset(m, p, se = c(a, b ,c))[1, ])

print(a)
cat(a, file = pipe('pbcopy'))
