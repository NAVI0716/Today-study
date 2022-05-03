a,b=map(int,input("입력:").split())
if a>b:
    max_v=a
    min_v=b
else:
    max_V = b
    min_v = a
print(f"최댓값:{max_v}\n최소값:{min_v}")
#참값 if 조건 else 거짓값 ->
max_v=b if a<v else a
min_v=a if a<b else b
print(f"최댓값:{max_v}\n최소값:{min_v}")
#입력 3개 최소값을 출력 단 조건연산자를 이용하여 코드를 완성하시오
a,b,c=map(int,input(":").split())
min_v=c if c<a else