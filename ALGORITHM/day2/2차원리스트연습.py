# import numpy as np
# firstlist=np.arange(1,9).reshape(2,4)
# secondlist=np.array([1,4,7,8,3,6,9,8]).reshape(2,4)
# print(firstlist*secondlist)
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
    for j in range(4):
        end.append(firstarray[i][j]*secondarray[i][j])
    last_end.append(end)
for i in last_end:
    print(*i)   
        
        
    