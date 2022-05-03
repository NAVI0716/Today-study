def f(n):
    for i in range(n):
        print("~!@#$%^&*()_+|")

def f1(n):
    str_v=""
    for i in range(n):
        str_v="~!@#$%^&*()_+|\n"
    return str_v #str_v를 출력하겠다
n=int(input("정수입력:"))
print(f(n))