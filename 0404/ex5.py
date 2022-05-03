import time
import csv
import requests
from bs4 import BeautifulSoup
headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36"}
url = "https://news.naver.com/main/list.naver?mode=LS2D&sid2=228&sid1=105&mid=shm&date=20220404&page="
title="제목","부내용"
f=open("save1.csv","w",encoding='utf-8-sig',newline="")
writer=csv.writer(f)
writer.writerow(title)
in_data=[]
for page in range(1,7):
    print(f"page{page} 크롤링중입니다")
    r=requests.get(url+str(page),headers=headers)
    r.raise_for_status()
    html = r.text
    soup = BeautifulSoup(html, 'html.parser')
    data = soup.find_all("dl")
    for i in data:
        if i.a:
            in_data.append([i.dd.previousSibling.previousSibling.text.strip(), i.dt.find_next("span",attrs={"class":"lede"}).text])
    time.sleep(5)
writer.writerows(in_data)