import numpy
n = input("Enter no. of equations") #n is the value of no. of equations / variables
a = numpy.zeros((n,n+1)) # creating matrix for  storing the values of coefficients of variables
# storing coefficients of variables
for i in range(0,n):
    for j in range(0,n+1):
        print("a[",i,"][",j,"]-:")
        a[i][j] = input()
d = numpy.zeros((n,2))
i=0
while True:
    for j in range(0,n):
        if i ==0 :
            d[j][i] = a[j][n]*1.0/a[j][j]
        else:
            sum=0
            for k in range(0,n):
                if k == j:
                    continue
                else:
                    if i%2!=0:
                        sum = sum+d[k][0]*a[j][k]
                    else:
                        sum = sum+d[k][1]*a[j][k]
            if i%2 == 0 :
                d[j][0] = (a[j][n]-sum)*1.0/a[j][j]
                print("d[",j,"][",i,"]-:",[j][0])
            else:
                d[j][1] =(a[j][n]-sum)*1.0/a[j][j]
                print("d[",j,"][",i,"]-:",[j][1])
                                           
