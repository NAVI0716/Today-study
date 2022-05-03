
def f(n):
    if n == 1 :
        return 1
    return(n*f(n-1))

#n=int(input("입력:"))
#print(f(n))
animal= 'elephant'
#print(animal[::3])
#열거함수
dic={"key1:":1,"key2:":2,"key3:":3}
str_v="1234"
l=["data1","data2","data3","data4"]
#print(enumerate(l))
#<(0,"data",(),(),())>
for i in enumerate(dic):
    print(i)
l=[1,2,3,4,1]
tp=list(enumerate(l))
for idx,v in enumerate(l):
    print(idx,v)
print(tp)

