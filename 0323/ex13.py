class Ec(Exception):#예외가 담겨진 클래스 형성
    def __str__(self):
        return "나만의 예외발생"
def f():
    raise Ec()
def d():
#    f(0)
    raise Exception("의미") #예외발생이라는 함수
try:
    f()
    d()

except Exception as e : #발생한 원인 출력
    print("예외")
    print(e)