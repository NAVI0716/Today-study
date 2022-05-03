import ex3
#zip설명
l=[1,2,3,4,5]
l2=[7,8,9,12,3]
for i in zip(l,l2):#두개의 시콘스의 원소들을 결합해주는데 사용 / 각각 추출해서 하나의 덩어리로
    print(i)
print(list(zip(l,l2)))
print(__name__)