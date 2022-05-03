#튜플 : 담겨있는 데이터의 변경이 불가능하다
l1=[1,]
print(type(l1))
tp=1,2,3,4,5 #이는 튜플형식이 된다
print(type(tp))

l2=[1,2,3,4]
print(l1+l2)
l1=l1+l2
print(tp)
tp+=(1,2,3,4,5)
print(tp)