import requests
r=requests.get("http://naver.com")#리소스 요청
#print(r.status_code)#상태확인
r.raise_for_status()#접속하지못하면 예외를 만든다
"""
불러올때는
r=requests.get
r.raise_for_status()
"""
#print(r.text)
#담겨있는 데이터들을 파일형태로 만들기
with open("data.html","w",encoding="utf-8") as f:#데이터 파일생성
    f.write(r.text)