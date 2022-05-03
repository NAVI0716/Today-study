import csv
import numpy as np
import webbrowser
import pandas as pd
from pandas import Series,DataFrame

from bs4 import BeautifulSoup
import time
import requests
from selenium import webdriver
import warnings
warnings.filterwarnings('ignore')
title="통화명","심볼","현재가","전일대비","등락율"
f=open("국제시장환율_등락율.csv","w",encoding='utf-8-sig',newline="")
writer=csv.writer(f)
writer.writerow(title)

b=webdriver.Chrome()
b.implicitly_wait(10)
b.get("http://naver.com")
b.implicitly_wait(10)
b.find_element_by_xpath('//*[@id="query"]').send_keys("금융\n")
b.implicitly_wait(10)
b.execute_script("window.scrollTo(0, 500)")
b.implicitly_wait(10)
b.find_element_by_xpath('//*[@id="web_1"]/div/div[2]/div[1]/div/a[2]').click()
b.switch_to.window(b.window_handles[1])
time.sleep(3)
b.find_element_by_xpath('//*[@id="menu"]/ul/li[4]/a').click()
b.implicitly_wait(10)
b.find_element_by_xpath('//*[@id="tab_section"]/ul/li[2]/a').click()
b.execute_script("window.scrollTo(0, document.body.scrollHeight)")
b.implicitly_wait(10)
b.switch_to.frame("frame_ex2")

data_up=[]
data_same=[]
data_down=[]
data_in=[]
html=b.page_source
soup=BeautifulSoup(html,"html.parser")
data=soup.find_all("td",attrs={"class":"tit"})

print(f"{1}페이지를 추출중")
for i in data:
    if int(i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', "")) > 0:
        data_up.append([i.text.strip(), i.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', "")])
    elif int(i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', "")) < 0:
        data_down.append([i.text.strip(), i.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', "")])
    elif int(i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', "")) == 0:
        data_same.append([i.text.strip(), i.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', "")])
print(f"{1}페이지 종료")
for page in range(2,5):
    b.find_element_by_xpath(f'/html/body/div/div/a[{page}]').click()
    b.implicitly_wait(10)
    print(f"{page}페이지를 추출중")
    html=b.page_source
    soup=BeautifulSoup(html,"html.parser")
    data=soup.find_all("td",attrs={"class":"tit"})
    b.implicitly_wait(10)
    for i in data:
        if int(i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', ""))>0:
            data_up.append([i.text.strip(),i.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n',"").replace('\t',"")])
        elif int(i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', ""))<0:
            data_down.append([i.text.strip(), i.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', "")])
        elif int(i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', ""))==0:
            data_same.append([i.text.strip(), i.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip(),i.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.next_sibling.text.strip().replace('\n', "").replace('\t', "")])
    print(f"{page}페이지 종료")
    time.sleep(3)
writer.writerows(data_up)
writer.writerows(data_down)
writer.writerows(data_same)
f.close()

df=pd.read_csv("국제시장환율_등락율.csv")
print(df)




