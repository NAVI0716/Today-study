#임의의 정답 값 1~100 일치시 "x회째 정답!"(x는 시도횟수) """
"""
from random import *
a=randrange(100)
print(f"미리정답보기:{a}")
b=input("입력값:")
while a!=b:
    b = input("입력값:")
    if a>int(b):
        print("up")
        continue

    elif a<int(b):
        print("down")
        continue

print("종료")
"""
"""
import random
#1~100 정수값
a=random.randint(1, 100)
b=input("입력:")
while a!=int(b):#= not(a==b)
"""
import random
#1~100 정수값
a=random.randint(1, 100)
c=0
기록=[]
while True:
    c+=1
    b= input("입력값:")
    기록.append(b)
    #기록.insert(0,b)
    if a>int(b):
        print("up")
    elif a<int(b):
         print("down")
    else:
        print(f"{c}회째 정답")
        print(기록)
        break
print("정답: ")
for i in 기록:
    print(i, end="\t")