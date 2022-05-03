from random import randint
#fruitdb=[['사과',1020],['오렌지',880],['포도',3160]]
#for i in range(0,len(fruitdb)):
#    print("과일명:",fruitdb[i][0],'(',fruitdb[i][1], ')원')

#def f():
#    l=[]
#    for i in range(0,6):
#        i=randint(1,45)
#        set(l.append(l))
#    return l
def f():
    l=[]

    while len(l)<6:
        lotto=randint(1, 45)
        if lotto not in l:
            l.append(lotto)
        else:
            l.sort()#sort 정렬
    return l
print(f"금주 번호:{f()}")
print(f"나의 번호:{f()}")
for i in range(10):
    if i == 5:
        break
    else:
        print("정상종료")

i=0
while i==10:
    i+=1
    if i ==5:
        break
else:
    print(i)