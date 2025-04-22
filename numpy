import numpy as np


a = [1,45,90]
type(a)

b = np.array(a)
b

type(b)

#how can we carte a user defiend array?

a =[]
size = int(input("enter size"))
for i in range(size):
  79

b = np.array(a)
b


# hbow can be chakee shape , size

a = [[1,2,3,4], [5,6,7,8], [6,7,7,7]]
b = np.array(a)
b

print("total shape = " , b.shape)

print("total elements = ", b.size)

print("total dimension = ", b.ndim)


a = np.zeros(3)
a

b = np.zeros((3,3))
b

print("total shape =", a.shape)
print("total elements", a.size)

print("total shape =", b.shape)
print("total elements", b.size)
