import requests
from bs4 import BeautifulSoup
url = "https://finance.naver.com/sise/sise_rise.naver?sosok=1"
r=requests.get(url)#특정주소에 위치하는 data요청을 통한 html정보수집
html_d=r.text
soup=BeautifulSoup(html_d, 'html.parser')
data=soup.select("td")
#웹은 html css 자바스크립트 3가지구조로 되어있다.
l=[]
def f(n,x):
    for i in range(x):
        n=n.next_sibling
    return n.text.strip()
for i in data:
    if i.a:
        datas={"종목명":i.a.text, "현재가":f(i,2), "전일비":f(i,4), "등락률":f(i,6), "거래량":f(i,8), "매수호가":f(i,10), "매도호가":f(i,12), "매수총잔량":f(i,14), "매도총잔량":f(i,16), "ROE":f(i,20), "PER":f(i,18)}
        l.append(datas)
