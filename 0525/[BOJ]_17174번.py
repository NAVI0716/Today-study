"""
환전 -> 1달러지페로 교환
1달러지페 -> m개의 지페 한 묶음
새로운 m개의 묶음을
다시 하나로 묶음

N=13
M=10
EX 13달러를 세기위해 1달러 13번 세고, 지페10장을 한묶음

(2<= N <= 10000, 2 <= M <= N)
"""
N, M = map(int,input().split())
out=0
N1=N
count=0
while N>M :
    print(count)
    N=N-8
    count += 1
    if count%8==0:
        count+=1

out=N1+count
print(out,N1,count)
