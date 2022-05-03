#n=int(input("학생수:"))
#m=int(input("점수입력:"))
#s=int(input("선택:"))
s=0
c=0
z=0
x=0
q=0
l=[]
while s!=5:
    print("-"*44)
    print("1.학생수 | 2.점수입력 |3.점수리스트|4.분석|5.종료")
    print("-"*44)
    print(f"선택>", end="")
    s = int(input(""))
    if s==1:
        print(f"학생수>", end="")
        n = int(input(""))
    elif s==2:
        print(n)
        for i in range(n):
            print(f"scores>", end="")
            m = int(input(""))
            l.append(m)
            x+=m
    elif s==3:
        for i in l:
            print(f"scores[{c}]:{i}")
            c+=1
    elif s==4:
        z=max(l)
        q=x/len(l)
        print(f"최고 점수:{z}")
        print(f"평균 점수:{q}")
    else:
        pass

print("프로그램종료")


