#6   randrange 끝자리 종료
from random import randint    #난수설정/ randint(정수)
#for i in range(10):
#    print(randint(1,3))
def game():
    win=0
    while True:
        P_in=int(input("가위:1,바위:2,보:3 중 입력 :"))
        if not(P_in in [1,2,3]):
            print("잘못입력")
            continue
        C_in=randint(1,3)
        if ((P_in == 1 and C_in == 2) or(P_in == 2 and C_in == 3) or(P_in == 3 and C_in == 1)):
            print(f"패배{win}연승")
            break
        elif P_in == C_in:
            print("무승부")
        else:
            win+=1
            print(f"승리{win}연승")

game()