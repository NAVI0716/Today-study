m, n = map(int,input().split())
k = int(input())

if n+k >= 60:
    m_1=(n+k)//60
    m += m_1
    n = (n+k)%60
    if m >= 24:
        m = m - 24
        print(f"{m} {n}")
    else:
        print(f"{m} {n}")
else:
    if m >= 24:
        m = m - 24
        print(f"{m} {n + k}")
    else:
        print(f"{m} {n + k}")