class A:#클래스 선언
    필드=0#클래스 필드
    def __init__(self,x=10):#생성자 선언 인스턴스매소드는 self(=입력 매개변수가아예없는 비어있는 상태)라는 기호를 가지고있어야함
        print("생성자 A동작")
        self.필드=10#인스턴스 필드
a=A( )
a=A( )
class M:
    def __init__(self):
        print("생성자 동작")
    def 메서드1(self):
        print("메서드1 동작")
    def 메서드2(self,x):
        print(x,"입력을 받는 메서드 2동작")
    def 메서드3(self):
        print("메서드3동작")
        return 10
    def 메서드4(self,x,y):
        print(x,y,"입력을 받는 메서드 4동작")
    def 메서드5(self,x):
        return f"{x}를 입력 받는 메서드 5동작"
m=M()
m.메서드1()
m.메서드2(10)
m.메서드3()
m.메서드4(10,10)
print(m.메서드5(10))


