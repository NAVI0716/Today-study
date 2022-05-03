def f(x,y):
    #리턴은 함수에서 반드시 붙는다
    print(x,y)

    if x==100:
        return
    print("조건미달성")
    return x, y
    #NONE: 종료하면서 반환값을 전달한다. 자동적으로 리턴이 써진다/리턴은 함수의 종류를 의미
    #print(y)#연산은 하나의 결과를 내야한다.
#리턴 여러개 사용 불가능하지만
    #if x==100:
        #return
def f1(x):
    x+=1
    return x
def f2(x):
    x[0]+=1
    return x
x=10
y=[1]
#print(f(x,20))
print(x)
print(f1(x))
print(x)
print(f2(y))
print(y)