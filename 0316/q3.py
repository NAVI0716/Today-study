#두자릿수 출력: 00~99
for i in range(10):
    for j in range(10):
        print(i,j,sep="")
    print()
#n*n
for i in range(1,11):
    for n in range(i):
        print("*",end="")
    print()
for i in range(1,11):
    print("*"*i)