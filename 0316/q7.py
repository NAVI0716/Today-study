#2
"""
n=input("문자단일입력:")[0]#[0]
if '0'<=x and x<='9':
    print('숫자')
elif "A"<=x and x<="Z":
    print("대문자")
elif 'a'<=x and x<='z':
    print("소문자")
else:
    print("특수문자")
"""
#7 최대 최소
"""
l=[]
n=int(input("과목수:"))
a=0
최대=최소=0
for i in range(1,n+1):
    i=int(input("입력:"))
    if i>0:
        l.append(i)
        a+=i
    else:
        break


print(l)
print(f"평균:{a/len(l)}")
print(f"최고점수: {max(l)}")
print(f"최저점수: {min(l)}")
"""
#8
"""
a,b=input("입력:").split()
for i in range(1,int(a)+1):
    for j in range(1,int(b)+1):
        print(i*j,end="\t")
    print()
"""
#9
"""
n=int(input("입력:"))
a=0
for i in range(0,n+1):
    a+=i
print(a)
"""
#10
"""
n=int(input("입력:"))
l=[]
for i in range(0,n+1):
    if i<n:
        print(f"{i},", end="")
    else:
        print(i)
"""
#    l.append(i)
#print(tuple(l))
#11

n=int(input("정수형"))
for i in range(1,101):
    print(i,end=",")
    if i==n-1:
        print("사용자의 요청에 의해 종료")
        break
    else:
        pass
#else:
#    print("\b")
#12
"""
n=int(input("배수 출력x:"))
for i in range(1,101):
    if i%n==0:
        pass#continue
    else:
        print(i,end=",")
"""
#13
"""
n,s=input("정수형:").split()
for i in range(0,int(n)+1):
    if i%int(s)==0:
        print(i,end=",")
    else:
        pass
"""
#14
"""
l=[]
l=input("입력:").split()
a=len(l)
print(l)
print(a)
b=0
홀수=[]
짝수=[]
for i in l:
    b=i
    print(i)
    if int(i)%2 == 0:
        짝수.append(b)
    else:
        홀수.append(b)

print("홀수:",len(홀수))
print("짝수:",len(짝수))
"""