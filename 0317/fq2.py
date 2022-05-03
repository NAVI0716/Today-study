n=int(input("1번정수입력:"))
m=int(input("1번정수입력:"))
def f(n,m):
    min_v=n if n<m else m
    max_v=m if n<m else n
    min_v*=10
    max_v//=10
    return min_v,max_v
print(f(n,m))