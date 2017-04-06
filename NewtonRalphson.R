f <- function(x)
{
  return(x*exp(x)-cos(x))
}
fd <- function(x)
{
  return(x*exp(x)+exp(x)+sin(x))
}
i <- 1
print(paste("Enter a value for xo : "))
xo <- as.integer(readline(prompt= "xo : "))
fo <- f(xo)
fi <- fd(xo)
if(abs(fi)<=0)
{
  print(paste("Slope to small"))
}else
{
   xi <- xo - (fo/fi)
   while(i<50)
   {
        if(abs(((xi-xo)/xi))<0.0000000000001)
        {
           print(paste(xo,"  ",fo,"  ",xi,"  ",f(xi),"  ",i))
           print(paste("Convergent"))
           print(paste(xi))
           break
        }else
        { 
           print(paste(xo,"  ",fo,"  ",xi,"  ",f(xi),"  ",i))
           xo<- xi
           fo<-f(xo)
           fi <- fd(xo)
           xi= xo-(fo/fi)
           i=i+1
         }
   }
}