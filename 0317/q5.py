#5
"""
def f(n):
    c=0
    a=0
    if n<10:
        for i in range(1, n + 1):
            i = int(input("입력:"))
            a += (i * i)
    else:
        print("잘못입력되었습니다.")
    return a

n=int(input("계수:"))
print(f"출력:{f(n)}")
"""
def func(n):
    if (n==0):
        return 0
    return (n % 10)**2+func(n//10)

while True:
    data=input("9자리 정수입력:")
    if len(data)<=9:
        data=int(data)
        break
    print("잘못입력되었습니다.\n 다시입력하세요")
print(func(data))