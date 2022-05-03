class A:
    def  __init__(self):
        print("A생성자 동작")
    def f(self):
        print("A의 매소드")
class Sub_A(A):
    def __init__(self):
        A.f(self)
        print("자식A생성")
Sub_A()
#1. 호출된 클래스의 객체가 메모리에 생성 2.-> 초기자(인스턴스매소드) 동작 /목적 : 객체의 초기화
#3. 