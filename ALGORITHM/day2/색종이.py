colorpaper=int(input())
y_v=[]
xy_v=[]
count=0
for i in range(100):
    x_v=[]
    for j in range(100):
        x_v.append('*')
    xy_v.append(x_v)

for i in range(colorpaper):
    y, x=map(int,input().split())
    for j in range(y,y+10):
        for t in range(x,x+10):
            xy_v[j][t]='/'
for i in range(100):
    for j in range(100): 
        if xy_v[i][j]=="/":
            count+=1
print(count)

