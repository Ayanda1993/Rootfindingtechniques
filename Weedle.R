func <- function(x)
{
  value <- 1/(1+(x^2))
  return(value)
}
f<- c(0.00,0.00,0.00,0.00,0.00,0.00,0.00)
a <- as.double(readline(prompt="a : "))
b <- as.double(readline(prompt="b : "))
n <- as.integer(readline(prompt="n : "))
if(b-a ==0 || n==0)
{
  print("Invalid Entry")
}else{
h <- (b-a)/n
x<- a
for(i in 1:7)
{
   f[i] <- func(x)
   print(paste("f[",i,"]:",f[i]))
  x <- x+h
}
s <- f[1]+f[n+1]
s<- s+ 5*(f[2]+f[6])+f[3]+f[5]+6*f[4]
integral <- h*s*3/10
print(paste("Integral : ",integral))
}