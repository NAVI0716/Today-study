def f(x=1,y=2):
    print(f"x={x},y={y}")
#f() #기본입력
#f(1,2) #순서입력
#f(y=1,x=2)      #지정 매개변수입력
#print("data")
#기본입력을 갖는 함수
def d_f(y,x=1):
    print(x)
#d_f(1)
#d_f(1,10)

#가변인자
def f(y,*x):#반드시 특수인자는 입력의 가장 뒤에 위치
    print(x)
#f(1)
#f((1,2,3,4))
#f(1,2,3,4)

#키워드 가변인자(딕셔너리)
def f(**x):
    print(x)
f(key1=1,key2=2,key3=3,key4=4,key5=5)
f()