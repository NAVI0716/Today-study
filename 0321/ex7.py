"""
class A:
    def f(self):
        print("a함수")
class B(A):
    def f(self):
        print("b의함수")
a=B()
a.f()
"""
#강아지 고양이 닭 for i in l: i.소리()
class 동물:
    def 소리(self):
        pass
class 강아지(동물):
    def 소리(self):
        return "멍멍"
class 고양이(동물):
    def 소리(self):
        return "냐옹"
class 닭(동물):
    def 소리(self):
        return "꼬끼오"
l=[강아지(),고양이(),닭()]
for i in l:
    print(i.소리())