#while 1~10   5/ 반복문은 중첩가능 """
x=0
while x!=10:
    for i in range(3):
        if x == 5:
            break
    print(x)
    x+=1
else:
    print("종료")

