from selenium import webdriver
from wordcloud import WordCloud

import requests
import numpy as np
from pandas import Series,DataFrame
from bs4 import BeautifulSoup
import time
import warnings
warnings.filterwarnings('ignore')
import webbrowser
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
b.find_element_by_xpath('//*[@id="stock_items"]').send_keys("카카오\n")
b.implicitly_wait(10)
b.find_element_by_xpath('//*[@id="content"]/div[4]/table/tbody/tr[2]/td[1]/a').click()
b.execute_script("window.scrollTo(0, 500)")
b.find_element_by_xpath('//*[@id="content"]/ul/li[2]/a').click()
b.execute_script("window.scrollTo(0, document.body.scrollHeight)")
b.implicitly_wait(10)
frame=b.find_element_by_xpath('//*[@id="content"]/div[2]/iframe[2]')
b.switch_to.frame(frame)

data=[]
html=b.page_source
soup=BeautifulSoup(html,"html.parser")
data=soup.select("td.num")
for i in data:
    print(i.text.strip())




