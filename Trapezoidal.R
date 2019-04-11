f<- c(0.00,0.000,0.00,0.000,0.000,0.000,0.00,0.000)
func <- function(x)
{
value <- 1/(1+(x^2))
return(value)
}
a <- as.double(readline(prompt="a : "))
b<- as.double(readline(prompt="b :"))
n <- as.integer(readline(prompt="n : "))
if(n==0 || b-a ==0)
{print ("Invalid n or interval !")
}else{
h <- (b-a)/n
x<- a
for(i in 1:7){ 
  f[i] <- func(x) 
  print(paste("f[",i,"] : ",f[i]))
  x <- x+h
  
}
s <- (f[1]+f[7])/2
for(i in 2:n)
{
    s = s+f[i]
}

integral <- h*s
print(paste("Integral is : ",integral))
}
