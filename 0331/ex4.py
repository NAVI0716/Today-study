from urllib.request import urlopen #서버에 요청합니다 import로 파일을 접근할수있게 경로를 만들어줘야한다
f=urlopen("http://www.hanbit.co.kr")
f1=urlopen("http://www.naver.com")
print(f)
#print(f.read())#문자열로서 가져오지만 ㄴ스트링은 아니다, 문자열이므로 읽어온다의 read
print(f.status)#어느 정도의 코드값을 가지고있는지 확인 가능
print(f1)
print(f.status)
print(f.getheader("Content-Type"))
