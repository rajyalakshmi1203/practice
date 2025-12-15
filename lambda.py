nums=[2,4,3,6,1,8,5]
#evens=[]
#for i in nums:
#    if i%2==0:
 #       evens.append(i)
#print(evens)

# we can reduce the above steps by using filter
#def check(n):
#    return n%2==0
#evens=list(filter(check,nums))
#print(evens)

# we can reduce the steps to one line using lambda function
evens=list(filter(lambda i:i%2==0,nums))
print(evens)

#def value(j):
#   return j*2
#double=list(map(value,evens))
#print(double)

# we can reduce the above steps to make double by using lambda funstion
#double the numbers in even list
double=list(map(lambda j:j*2,evens))
print(double)

# reduce function  
from functools import reduce   # reduce is not a inbuilt function we have to import
#def total(k,m):
#   return k+m
#sum=reduce(total,double)
#print(sum)

# reduce the steps using lambda function in a single line
sum=reduce(lambda k,m:k+m,double)
print(sum)