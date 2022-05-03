#<반복문>for 정해진횟수만큼반복 while 어떤조건에 대해서 반복
#for 변수 in 구조:
for i in (1,2,3,4,5):
    print("*")
    print(i)
x=0
for i in range(10):
    x+=1#0~9
print(x)
x=0
for i in range(10,0,-1):
    x += 1#10~1
print(x)
x=0
for i in range(1,11):
    x += 1#1~10
print(x)
x=0
for i in range(0,10):
    x += 1#0~9
print(x)

for i in [1,2,3,4]:#in 연산자는 안에 포함되어있는지 확인하는것
    print(i)
else:
    print("종료")
#반복
l=[1,2,3,4,5,6,7,8,9]
for i in range(len(l)):#횟수/ 정수값
    l[i]+=1
print(l)
#for 문 활용 2가지
# #추출
print("[",end="")
for i in l:
    if i==5:
        break#반복탈출
    print(i,end=", ")
else:
    print("\b")#뒷 삭제
    print("정상종료")
for i in range(10):
    print(i,"*"*i)
l=[1]*10
print(l)
