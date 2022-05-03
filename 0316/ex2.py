#실행하고싶은것을 조건으로 나타낼때 """
"""
x=10
if x==10:
    print("조건문 동작")
print("종료")
"""
#입력 "a"를 입력시
#a가 입력되었습니다.
"""
입력=input("입력:")
if 입력 =="a":
    print("a가 입력되었습니다.")
print("종료")
"""
"""
입력=input("입력:")
if not(입력 !="a"):
    print("a가 입력되었습니다.")
print("종료")
"""
"""
x=11
if x==10:
    print("if 동작")
else:
    print("나머지")
"""
#정수입력 짝수면 짝수 홀수면 홀수
"""
x=input("문자열:")[0]
if int(x)%2:
    print("홀수")
else:
    print("짝수")
    
x=int(input())#345678
n=x//100000
m=x%10
if m%2:
    print("홀수")
else:
    print("짝수")
"""
"""
if True:
    print("실행")
if False:
    print("ㅁ실행")
else:
    print("실행")
"""
"""
#입력 1,2,3,4,5
x=1
if 1==x:
    print("1번길")
elif 2==x:
    print("2번길")
elif 3==x:
    print("3번길")
else:
    print("길이없음")
"""
"""
x=int(input("0점에서 100점 사이의 점수를 입력하세요:"))
if 90<=x<=100:
    print(f"{x}점은 A학점입니다.")
elif 80<=x<=89:
    print(f"{x}은 b학점입니다.")
elif 70<=x<=79:
    print(f"{x}은 c학점입니다.")
elif 60<=x<=69:
    print(f"{x}은 A학점입니다.")
else:
    print("범위를 벗어났습니다.")
"""
"""
x=int(input("0점에서 100점 사이의 점수를 입력하세요\n:"))
if 0<=x<=100
    if x<90:
        print(f"{x}점은 A학점입니다.")
    elif x<80:
        print(f"{x}은 b학점입니다.")
    elif x<70:
        print(f"{x}은 c학점입니다.")
    elif x<60:
        print(f"{x}은 d학점입니다.")
else:
print("범위를 벗어났습니다.")
"""
#산술연산 계산기
"""
x,y,c=input("입력:").split()
if y=="+":
    print(f"정답 : {x}+{c}=",int(x)+int(c),sep="")
elif y=="-":
    print(f"정답 : {x}-{c}=",int(x)-int(c),sep="")
elif y=="*":
    print(f"정답 : {x}*{c}=",int(x)*int(c),sep="")
elif y=="/":
    print(f"정답 : {x}/{c}=",int(x)/int(c),sep="")
else:
    print()
"""
k=input("a (연산자) b로 입력")
