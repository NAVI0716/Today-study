def f(n):
    if 'A' <= n <= 'Z':
        out_d=chr(ord(n)-ord("A")+ord("a"))
    elif 'a' <= n <= 'z':
        out_d = chr(ord(n) - ord("a") + ord("A"))
    else:
        out_d =
    return out_d

#while True:
    n=input("문자입력:")[0]
    n=f(n)
    print(n)

n=""
for i in input("문자입력:"):
    n+=f(i)
print(n)