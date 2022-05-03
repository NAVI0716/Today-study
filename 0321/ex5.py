class A:
    def __init__(self):
        self.__x=0
    def set_f(self,x):#데이터를 갱신하겠다
        self.__x=x
    def get_f(self):
        return self.__x
"""
a=A()
#a.__x=20##
a.set_f(10)
print(a.get_f())
"""
print(A)