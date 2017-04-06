func <- function(x)
{
  value <- x*x*x-4*x-9
  return(value)
}
i <- 1
e <- 0.0001
print ("Enter a value for a & b ")
a <- as.double(readline(prompt="a :" ))
b<- as.double(readline(prompt=" b : "))
if(func(a)*func(b)>0)
{
print ("Interval invalid")
}else
{
  m <- (a+b)/2
  while(((b-a)/b)>0.0001)
  {
      if(func(m)==0.0001)
      {
          print ("Root Found !")
          break 
      }else
      {
          print(paste(a , b , i , func(m), m))
          if((func(a)*func(m))>0)
                { a=m}else{b=m}
          m= (a+b)/2
          i=i+1
      }
  } 
  print(paste(" Root is :",m))
}