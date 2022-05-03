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
in_data=[]

for page in range(1,2):
    print(f"{page}페이지 크롤링중입니다.")
    r=requests.get(url+str(page))
    r.raise_for_status()
    html=r.text
    soup=BeautifulSoup(html,'html.parser')
    data=soup.select("dl")
    data1=soup.select("dd")

    for i in data:
        if i.a:
            print(i.dd.text.strip().replace(i.dd.span.text+i.dd.span.next_sibling.next_sibling.text,""))
            #in_data.append([i.dd.previous_sibling.previous_sibling.a.text.strip(),
            #                i.dd.text.strip().replace(i.dd.span.text+"\n"+i.dd.span.next_sibling.next_sibling.text,"")])

#    time.sleep(randint(3,6))
#writer.writerows(in_data)

#f=open("save.csv","r",encoding="utf-8-sig",newline="")
#reader=csv.reader(f)

#for i in reader:
#    print(i)
