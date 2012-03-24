# http://projecteuler.net/problem=19

a <- sum(strftime(seq(as.Date("1901/1/1"), as.Date("2000/12/31"), "month"), "%w") == "0")

print(a)
cat(a, file = pipe('pbcopy'))
