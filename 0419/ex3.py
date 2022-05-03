import numpy as np
from numpy.linalg import inv
a = np.array([[1,2,3],[4,5,6],[7,8,9]])
data=inv(a)
print(data)
#2x-y=0
#x+y=3
#W=Y(X^-1)
X = np.array([[2, -1],
              [1, 1]])
Y= np.array([[0],[3]])
inv_A = inv(X)
W = np.dot(inv_A,Y)
print(W)