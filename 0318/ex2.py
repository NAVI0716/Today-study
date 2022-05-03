
from random import randint
"""
bigdata=[]
notdata=[]
for i in range(1,101):
    bigdata.append(randint(1,33))
for i in range(1,34):
    if i not in bigdata:
        notdata.append(i)
    else:
        pass

print(bigdata)
print(len(bigdata))
print(notdata)
"""

#2
{1,2,3,4}
#set =중복 불가
l=[randint(1,33) for _ in range(100)]
l2=[i for i in range(1,34) if i not in set(l)]#33번동작*10000000-> 33*(1~33)+1000000
print(f"100개의값{l}")
print(f"없는값{l2}")