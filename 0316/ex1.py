#딕셔너리 2가지의 종료률 가지고 있다 key값과 value값  key이뮤터블 value뮤터블
d={"data":10,1:20}
d.update(k=10) #udata는 key값을 식별자로 줘야한다.
d["data"]=100
print(d)
d.update(k=20,key=20)
print(d)
d2=d.fromkeys((1,2,3), [1,2,3])
print(d)
print(d2)
print(d.get("data"))
print(d)
print(d["data"])
print(d.keys())
print(d)
print(d.values())
print(d)
print(d.items())
print(d)
print(list(d.items()))
print(d)
l2=list(d.items())
print(l2[3][0])#전체키값을 바꾸려면 고차원 변경[고차원][저차원]
print(l2[0][1])#데이터값
print(d.pop(1))
print(d)
print(d.popitem())