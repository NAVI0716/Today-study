l=[1,2,3,4]
tp1=tuple(l)
#tp2=tuple([1,2,3,4])
#tp1=str("1,2,3,4")
#tp2=str("1,2,3,4")
print(tp1)
print(tp1 is tp2)


l=[1,2,3,4,5]
l2=[l,l,l,l,l]
l3=[l2,l2,l2,l2,l2]
#l[0]#차원내리기
print(l3)
l3[0]