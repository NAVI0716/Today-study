#추상클래스 예시
from abc import *
class A(metaclass=ABCMeta):
    @abstractmethod
    def 추상메소드(self):
        pass
class B(A):
    def 추상메소드(self):
        print("오버라이딩")
B()


