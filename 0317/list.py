"""
l=[i for i in range(10)]
print(l)
l=[i%3 for i in range(10)]
print(l)
l=["data" for i in range(10)]
print(l)
l=[[0 for i in range(10)] for i in range(10)]
print(l)
end=[i for i in range(10) if i > 5]
print(end)
"""
#1
#l=[input("입력:") for i in range(100) if l>0]
"""
l=[]
for i in range(1,101):
    i=int(input("입력:"))
    if i==0:
        break
    else:
        l.append(i)
for i in l[::-1]:
    print(i,end=" ")
l=[o for i in range(100)]
for i in range(100):
    x=int(input("입력:"))
    if i==0:
        i-=1
        break
    else:
        l[i]=x
print(l[i::-1])

"""
#2
"""
l=list(map(int,input("입력:").split()))
print(l)
a=[]
b=[]
c=[]
for i in l:
    if 0 <= i <= 50:
        a.append(i)
    elif 50 < i < 101:
        b.append(i)
    elif 100<i:
        c.append(i)
    else:
        continue
print("0~50 숫자:",end="")
for i in a:
    print(i,end=" ")
print()
print("51~100 숫자:",end="")
for i in b:
    print(i,end=" ")
print()
print("101 이상숫자:",end="")
for i in b:
    print(i,end=" ")
print()
"""
#3

l=[0 for i in range(26)]
while True:
    x= input()[0]
    if not('A' <= x and x <= 'Z'):
        break
    l[ord('x')-ord('A')]+=1
for i in range(len(l)):
    if l[i] != 0:
        print(f"{chr(i+ord('A'))}:{l[i]}")
#ap="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#while True:
#    x= input()[0]
#    if not(x in ap):
#        break
dic={}
while True:
    x = input()[0]
    if not('A' <= x and x <= 'Z'):
        break
    if not(x in dic.keys()):
        dic[x] = 1
    dic[x]+=1
for key,data  in dic:
    print(f"{key}:{data}")



#4
"""
l=list(map(int,input("입력:").split()))
for i in l[::-1]:
    print(i,end=" ")
"""

#5
dx=[1,0,-1,0]
dy=[0,1,0,-1]
d=0
x=y=0
n=int(input("정수입력:"))
a=[[0 for _ in range(n)]for _ in range(n)]
for i in range(1,n*n+1):
    a[y][x]=i
    yy= y +dy[d]
    xx= x +dx[d]
    if (yy>=0 and yy<n) and (xx>=0 and xx<n):
        if a[yy][xx] ==0:
            x=xx
            y=yy
        else:
            d=(d+1)%4
            x+=dx[d]
            y+=dy[d]
    else:
        d = (d + 1) % 4
        x += dx[d]
        y += dy[d]
for i in a:
    for j in i:
        print(j,end="\t")
    print()
