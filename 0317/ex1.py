dic={}
l=dict.fromkeys(([1,2,3,4,5]),"data")
print(l)
for key,data in l.items():#items 키값 벨류 동시에
    print(f"{key}:{data}")
a=[1, 2, 3, 4, 5]
x= a.pop((0))
print(x)