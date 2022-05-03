import csv
import time
from random import randint
import requests#수집
from bs4 import BeautifulSoup#정리
url="https://movie.naver.com/movie/point/af/list.naver?&page="
#파일의 내용정리
title = "제목","평점","후기"
f = open("save.csv","w",encoding='utf-8-sig',newline="")
writer=csv.writer(f)#작성한다
writer.writerow(title)
in_data = []
#data 수집
for page in range(1,5):
    print(f"page{page}크롤링중")
    #1개의 page를 로드(스크래핑)
    r = requests.get(url + str(page))
    r.raise_for_status()  # 정상적으로 동작되면 200으로 나오고 비정상적이면 예외처리된다./ 접속상태확인 (접속코드200 아닐시 예외발생)
    html = r.text
    soup = BeautifulSoup(html, 'html.parser')
    data = soup.find_all("td", attrs={"class": "title"})
    for i in data:
        if i.a:
            # 단일 입력
            # in_data=[i.a.text,i.em.text,i.br.next_sibling.strip()]
            # writer.writerow(in_data)
            in_data.append([i.a.text, i.em.text, i.br.next_sibling.strip()])
    time.sleep(randint(3,6))#빼먹으면 큰일난다!!!
# #작성에 대한 데이터는 문자로 나열되어있다#한글사용시encoding="utf-8-sig"필수/마지막으로 공백라인 만들어줘야한다.

#저장
writer.writerows(in_data)