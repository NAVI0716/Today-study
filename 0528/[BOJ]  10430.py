# a= list(map(int,input().split()))
# l=[]
# for i in a:
#       if 2 <= i <= 10000:
#           l.append(i)
# print((l[0]+l[1])%l[2])
# print((l[0]%l[2])+(l[1]%l[2])%l[2])
# print((l[0]*l[1])%l[2])
# print(((l[0]%l[2])*(l[1]%l[2]))%l[2])

A,B,C=map(int,input().split())
print( (A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)