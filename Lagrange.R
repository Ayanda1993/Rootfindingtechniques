a <- as.double(readline(prompt= "a : "))
n <- as.integer(readline(prompt="n : "))
x <- c()
f <- c()
for(i in 1:n+1)
{
  x[i] <- as.double(readline(prompt= "x : "))
  f[i] <- as.double(readline(prompt= "f(x) : "))
}
sum <- 0
for(i in 1:n+1)
{
  prod <- 1
  for(j in 1:n+1)
  { 
    if(j!=i)
    {
       prod <- prod * (a-x[j])/(x[i]-x[j]) 
       print(paste(prod))
    }
  }
  sum <- sum + (f[i]*prod)
}
print(paste("f(a) : ",sum))