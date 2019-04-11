n <- 2
a <- matrix(c(2.5000,5.2000,6.2000,1.2510,2.6060,3.1520),
nrow = 2,
ncol = 3,
byrow = TRUE)
u <- 0.0000
for(k in 1:(n-1))
{
  for(i in (k+1):n)
  {
    u<- (a[i,k]/a[k,k])
    for(j in k:n+1)
    { 
        a[i,j] <- (a[i,j]-(a[k,j]*u))
    }
  }
}
x <- as.double(c(0.000,0.000))
x[2]=a[2,3]/a[2,2]
u <- (a[1,2]*x[2])
x[1] <- (a[1,3]-u)/a[1,1]
for(i in 1:n)
{
	print.default(paste("x[",i,"]",x[i]))
}