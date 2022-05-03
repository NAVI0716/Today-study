def f():
    print("함수f동작")
def call_f():
    print("콜함수 동작")
    f()
f()
call_f()

#재귀호출/ 반복하는것이지만 어떠한 반복보다 느리다
def d():
    print("d")
    d()
#재귀슬땐 무한루프 조심
def n_p(n):
    if n==1:
        return 1
    return  n*n_p(n-1)
n_p(5)
