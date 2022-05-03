chessboard=[]
last_end=[]
count=0
for i in range(8):
    number=list(input())
    chessboard.append(number)
for i in range(8):
    for j in range(8):
        if i%2==0:
            if j%2==0:
                if "F" == chessboard[i][j]:
                    count+=1
        elif i%2==1:
            if j%2==1:
                if "F" == chessboard[i][j]:
                    count+=1
print(count)
# print(sum(input()[i % 2 :: 2].count("F") for i in range(8)))
