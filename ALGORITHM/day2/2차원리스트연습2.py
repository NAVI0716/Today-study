# import numpy as np
# firstlist=np.array([3,6,9,8,5,2]).reshape(2,3)
# secondlist=np.array([9,8,7,6,5,4]).reshape(2,3)
# multiplelist=firstlist*secondlist
# print(multiplelist)
firstarray=[]
secondarray=[]
last_end=[]
for i in range(2):
    number=list(map(int,input().split()))
    firstarray.append(number)
for i in range(2):
    number=list(map(int,input().split()))
    secondarray.append(number)
for i in range(2):
    end=[]
    for j in range(3):
        end.append(firstarray[i][j]*secondarray[i][j])
    last_end.append(end)
for i in last_end:
    print(*i)   