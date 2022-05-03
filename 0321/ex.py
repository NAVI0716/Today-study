"""
class A:
    def __f(self):#은닉성은 상속 x
        print("나만씀")

    def g(self):
        self.__f()

    def c(self):
        pass
class B(A):
    def __init__(self):
        super().__init__()
        print("b동작")
    def a(self):
        super(B,self).g()
class C(B):
    def __init__(self):
        super().__init__()
        print("c동작")

a=B()
a.a()
"""
class A:
    def __init__(self):
        print("A동작")
class B(A):
    def __init__(self):
        super().__init__()
        print("B의 생성자동작")
class C(A):
    def __init__(self):
        super().__init__()
        print('c의 생성자동작')
class D(B,C):
    def __init__(self):
        super().__init__()
        print("d의 생성자동작")
D()