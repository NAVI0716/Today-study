#1. 외부모듈 import
import time,csv,requests
from bs4 import BeautifulSoup
from random import randint
#2. 헤더를 생성 + url ->get(결합된 정보)
headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36"}
url = "https://land.naver.com/news/region.naver?city_no=1100000000&dvsn_no=&page="
#3. 파일 열기
title="제목","내용"
f=open("Q2.csv","w",encoding='utf-8-sig',newline="")
writer=csv.writer(f)
writer.writerow(title)
in_data=[]
#4. 크롤링
for page in range(1,6):
    print(f"page{page} 크롤링중입니다")
    r = requests.get(url + str(page), headers=headers)
    r.raise_for_status()
    html = r.text
    soup = BeautifulSoup(html, 'html.parser')
    data = soup.select("dl")
    for i in data:
        if i.a:
            in_data.append([i.dd.previous_sibling.previous_sibling.a.text.strip(),
                            i.dd.text.strip().replace(i.dd.span.text+"\n"+i.dd.span.next_sibling.next_sibling.text,"")])
    time.sleep(randint(3, 6))
# 5. 저장
writer.writerows(in_data)#2차원
f.close()
#data수집
#6. 로드 후 출력
f=open("Q2.csv","r",encoding='utf-8-sig',newline="")
reader=csv.reader(f)
n=True
for i in reader:
    if n:#data 전처리
        n=False
        continue
    print(i[0],i[1])
#1.https://land.naver.com/news/region.naver?city_no=1100000000&dvsn_no=&page=1 에서 뉴스 5페이지 수집
#randint(3,6)
#2.개인에게 맞는 User-Agent 정보를 찾아서 해더를이용하여 접속
#3. csv파일로 저장
#4.뉴스의 제목,내용 2가지를 이용하여 입력
#5. 저장된 csv파일을 이용하여 내용 출력!
"""
print("data 값".replace("값","변경"))
import csv
f = open("Q5.csv","w",encoding="utf-8-sig",newline="")
writer=csv.writer(f)
writer.writerow()#하나 저장 1차원
writer.writerows()#복수 저장 2차원 원소의 갯수로 저장 내용 증가
f.close()

f = open("Q5.csv","r",encoding="utf-8-sig",newline="")
reader=csv.reader(f)
for i in reader:
    print(i)
"""