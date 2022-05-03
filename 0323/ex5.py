
#파일의 이름이란 그파일이 진짜위치한 곳으로 지정한다.
#w_f=open("data.txt","w",encoding='UTF-8')#데이터라는 파일이 없어서 읽을수없다 r일기모드 w쓰기모드 a추가모드
w_f=open("data.txt","wb")
#w_f.write("1234 data \ndata2")#쓰기모드는 덮어쓰기로 입력된다.
#w_f.write("1234")
#w_f.write("안녕하세요")

print(w_f.writable())
print(w_f)
"""
w_f=open("data.txt","r",encoding='UTF-8')
#print(len(w_f.readline()))
#print(len(w_f.readline()))
#print(len(w_f.readline()))
for i in w_f:
    print(i)
"""