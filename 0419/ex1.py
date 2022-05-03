import numpy as np
from numpy.linalg import inv#역행렬
a= np.array([2,1])
print(a)#벡터 선
print(np.linalg.norm(a))#벡터의 길이
행렬1=np.array([[1,2],[3,4]])#행렬 면
print(행렬1)
m1=np.array([[1,2],[3,4]])
m2=np.array([[1,2],[3,4]])
print(m1*m2)
print(m1+m2)
i_m1 = inv(m1)
print(m1)
print(i_m1)
"""np.dot#내적 연산"""
print(np.dot(m1,m2))
x=np.array([1,2,3])
y=np.array([4,5,6])
print(np.dot(x,y))
m_x = np.array([[1,2,3]])
m_y = np.array([[4,5,6]])
print(m_x)
print(m_y)
print(m_x.shape)
print(m_y.shape)
#전치행렬
m_y=m_y.T
print(m_y.shape)
print(np.dot(m_x,m_y))
print(m_x.dot(m_y))
a1=np.array([[1,2,3],[-1,-2,-3]])
#a2 =[[4,-4],[5,-5],[6,-6]]
a2 =np.array([[4,5,6],[-4,-5,-6]])
a2= a2.T
y = np.dot(a1,a2)
print(y)