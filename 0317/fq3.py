def f(n):
    if n==1:
        return '1'
    return f"{n} "+f(n-1)
n=int(input("정수입력:"))
print(f(n))