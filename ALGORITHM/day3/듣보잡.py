N, M = map(int,input().split())
Np=[]
Mp=[]
for i in range(N):
    Np.append(input())
for i in range(M):
    Mp.append(input())
count=0
people={}
for i in Np:
    for j in Mp:
        if i == j:
            count+=1
            people[i]=j
people=sorted(people)
print(count)
for i in people:
    print(i)


    

