# m, n, l = map(int,input().split())
# k = int(input())
# if l+k >= 60:
#     n_1=(l+k)//60
#     n += n_1
#     l = (l+k)%60
#     if n >= 60:
#         m += n//60
#         n = n%60
#         if m >= 24:
#             m=m-24
#     else:
#         if m >= 24:
#             m = m - 24
#
#     print(f"{m} {n} {l}")
# else:
#     print(f"{m} {n} {l+k}")

# 시간, 분, 초 = map(int,input().split())
# 추가초 = int(input())
# if 초 + 추가초 >= 60:
#     추가분=(초 + 추가초)//60
#     분 += 추가분
#     초 = (초 + 추가초)%60
#     if 분 >= 60:
#         시간 += 분//60
#         분 = 분 % 60
#         if 시간 >= 24:
#             시간 = 시간 - 24
#     else:
#         if 시간 >= 24:
#             시간 = 시간 % 24
#     print(시간, 분, 초)
# else:
#     if 분 >= 60:
#         시간 += 분 // 60
#         분 = 분 % 60
#     if 시간 >= 24:
#         시간 = 시간 % 24
#     print(시간, 분, 초+추가초)

h, m, s = map(int,input().split())
s_n=int(input())

s=h*60*60 + m*60 + s+s_n

m,s = divmod(s,60)
print(m,s)
h,m = divmod(m,60)
print(h,m)
if h >= 24:
    h = h % 24
print(h, m, s)