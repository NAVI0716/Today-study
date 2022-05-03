import time
import sqlite3
import requests
from bs4 import BeautifulSoup
headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36"}
url = "https://news.naver.com/main/list.naver?mode=LS2D&sid2=228&sid1=105&mid=shm&date=20220404&page="

in_data=[]
for page in range(1,7):
    r=requests.get(url+str(page),headers=headers)
    r.raise_for_status()
    html = r.text
    soup = BeautifulSoup(html, 'html.parser')
    data = soup.find_all("dl")

    for i in data:
        i.previousSibling
        #i.find_next("alt").text.strip()
        #i.find_next("span",attrs={"class":"lede"}).text
        datas=i.dd.previousSibling.previousSibling.text.strip()
        #datas={i.dt.next_sibling.next_sibling.text.strip(),i.dt.find_next("span",attrs={"class":"lede"}).text}
        #datas={"제목":i.dt.a.strip(),"부제목":i.dd.span.text.strip()}
        in_data.append(datas)
print(in_data)


