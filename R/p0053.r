# http://projecteuler.net/problem=53

# too poor
a <- sum(do.call("choose", unname(as.list(subset(expand.grid(1:100, 1:100), Var1 > Var2)))) > 1000000-1)

print(a)
cat(a, file = pipe('pbcopy'))


