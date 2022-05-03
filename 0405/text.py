#import csv
import requests
import time
from bs4 import BeautifulSoup
from random import randint
headers = {"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36"}
url="https://search.naver.com/search.naver?where=news&sm=tab_pge&query=%EC%95%94%ED%98%B8%ED%99%94%ED%8F%90&sort=0&photo=0&field=0&pd=0&ds=&de=&cluster_rank=47&mynews=0&office_type=0&office_section_code=0&news_office_checked=&nso=so:r,p:all,a:all&start="
#title="제목","부제목"
f=open("save.csv","w",encoding='utf-8-sig',newline="")
#writer=csv.writer(f)
#writer.writerow(title)
in_data=[]

for page in range(1,2):
    print(f"{page}페이지 크롤링중입니다.")
    r=requests.get(url+str(page))
    r.raise_for_status()
    html=r.text
    soup=BeautifulSoup(html,'html.parser')
    data=soup.find_all('li',attrs={"class":"bx"})
    for i in data:
        if i.a:
            print(i.a..text)
