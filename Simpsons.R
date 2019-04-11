func <- function(x)
{
  value <- 1/(1+(x^2))
  return(value)
}
f<- c(0.3989,0.3521,0.2420,0.12960,0.0540)
a <- as.double(readline(prompt="a : "))
b <- as.double(readline(prompt="b : "))
n <- as.integer(readline(prompt="n : "))
if(b-a ==0 || n==0)
{
  print("Invalid Entry")
}else{
h <- (b-a)/n
x<- a
for(i in 1:5)
{
   
   print(paste("f[",i,"]:",f[i]))
    print(paste("x : ",x))

 x <- x+h
}
s <- f[1]+f[n+1]
for(i in 2:n)
{   
   if( (i%%2)== 0)
   {
      s = s+ 4*f[i]
      print(paste("4f[",i,"] :",(4*f[i])))
   }else{ 
      s =s + 2*f[i]
     print(paste("2f[",i,"] :",(2*f[i])))

   }
}
integral <- s * h/3
print(paste("Inetgral : ",integral))
}