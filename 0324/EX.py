class EX(Exception):
    def __str__(self):
        return "예외동작"
def f(x):
    if x == 11:
        raise EX()
    return print("data")
def d():
    f(10)
    pass
try:
    d()
    raise Exception("입력된 예외 메시지")
   # print(f())
except EX as e:
    print(e)
except Exception as e:
    print(e)
    print("모든예외")