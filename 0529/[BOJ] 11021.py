n=int(input())
l=[]
for i in range(1,n+1):
    a, b= map(int,input().split())
    l.append(f'Case #{i}: {a+b}')
for i in l:
    print(i)
