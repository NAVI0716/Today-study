def f(x):
    return x
print(f("data"))


print((lambda x:x)("data"))

print((lambda x,y:x+y)("data","filed"))
f=lambda x,y:x+y
print(f("x","Y"))
l2=[["data2",0],["data1",10],["data3",60],["data5",3],["data2",1]]
print(sorted(l2))
print(sorted(l2,key=lambda x:x[1]))
