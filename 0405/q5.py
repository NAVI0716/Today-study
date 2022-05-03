import csv
import requests
import time
from bs4 import BeautifulSoup
from random import randint
headers = {"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36"}
url="https://land.naver.com/news/region.naver?city_no=4800000000&dvsn_no=&page="
title="제목","부제목"
f=open("save.csv","w",encoding='utf-8-sig',newline="")
writer=csv.writer(f)
writer.writerow(title)
in_data1=[]
in_data2=[]
for page in range(1,6):
    print(f"{page}페이지 크롤링중입니다.")
    r=requests.get(url+str(page))
    r.raise_for_status()
    html=r.text
    soup=BeautifulSoup(html,'html.parser')
    data=soup.select("dt")
    data1=soup.select("dd")

    for i in data:

        if i.a:
            if len(i.a.text.strip()) != 0:
                in_data1.append(i.a.text.strip())
    for i in data1[1::]:
        in_data2.append(i.find_next("span",attrs={"class":"writing"}).previousSibling.text.strip())

    data_all=list(zip(in_data1,in_data2))
    time.sleep(randint(3,6))
writer.writerows(data_all)

f=open("save.csv","r",encoding="utf-8-sig",newline="")
reader=csv.reader(f)

for i in reader:
    print(i)
