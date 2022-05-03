def 학생수():
    print(f"학생수>", end="")
    n = int(input(""))
    return n
def 점수입력():
    x=0
    n=0
    l = []
    for i in range(n):
        print(f"scores>", end="")
        m = int(input(""))
        l.append(m)
        x += m
    return l,x
def 점수확인():
    c = 0
    for i in l:
        print(f"scores[{c}]:{i}")
        c += 1
    return
def 분석():
    z = 0
    q = 0
    z = max(l)
    q = x / len(l)
    print(f"최고 점수:{z}")
    print(f"평균 점수:{q}")
    return
def 종료():
    print("프로그램종료")


while s!=5:
    print("-"*44)
    print("1.학생수 | 2.점수입력 |3.점수리스트|4.분석|5.종료")
    print("-"*44)
    print(f"선택>", end="")
    s = int(input(""))
    if s==1:
        학생수()
    elif s==2:
        점수입력()

    elif s==3:
        점수확인()

    elif s==4:
        분석()

        pass
종료()

