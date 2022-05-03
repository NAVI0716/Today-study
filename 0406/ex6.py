import warnings
import csv
warnings.filterwarnings('ignore')
import time
from selenium import webdriver
from bs4 import BeautifulSoup

title="제목","부제목"
f=open("save.csv","w",encoding='utf-8-sig',newline="")
writer=csv.writer(f)
writer.writerow(title)
op=webdriver.ChromeOptions()#옵션의 가지고 있는 정보중에서 비워두고 설정
op.headless = True #창을 간접적으로 열었다고 가정하고 크롤링작업가능
op.add_argument("window-size=1920x1080")#추가적인 정보 전달
op.add_argument('user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36')
b=webdriver.Chrome(options=op)
b.implicitly_wait(10)
b.get("http://naver.com")
b.find_element_by_xpath('//*[@id="query"]').send_keys("암호화폐\n") #\n enter
b.implicitly_wait(10)
b.find_element_by_xpath('//*[@id="lnb"]/div[1]/div/ul/li[2]/a').click()
b.implicitly_wait(10)
b.execute_script("window.scrollTo(0, document.body.scrollHeight)")
time.sleep(5)
data1=[]
data3=[]
data_all=[]
for page in range(1,6):
    print(f"{page}페이지 출력중")
    b.find_element_by_xpath(f'//*[@id="main_pack"]/div[2]/div/div/a[{page}]').click()
    b.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    html=b.page_source
    soup=BeautifulSoup(html,"html.parser")
    data=soup.select('a.news_tit')
    data2=soup.select('a.api_txt_lines.dsc_txt_wrap')
    for i in data:
        data1.append(i.text)
    for i in data2:

        data3.append(i.text)
    data_all = list(zip(data1,data3))
    print(f"{page}크롤링 끝")
    time.sleep(2)
time.sleep(1)

writer.writerows(data_all)
f.close()

f=open("save.csv","r",encoding="utf-8-sig",newline="")
reader=csv.reader(f)
for i in reader:
    print(i)




