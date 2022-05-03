from selenium import webdriver
from bs4 import BeautifulSoup
op=webdriver.ChromeOptions()#옵션의 가지고 있는 정보중에서 비워두고 설정
op.headless = True #창을 간접적으로 열었다고 가정하고 크롤링작업가능
op.add_argument("window-size=1920x1080")#추가적인 정보 전달
op.add_argument('user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36')
b=webdriver.Chrome(options=op)
b.maximize_window()
b.get("https://media.naver.com/journalist/277/71511")
print(b.page_source)
s=BeautifulSoup(b.page_source,'html.parser')
print(s.text)
b.quit()#잔류를하지않기위해 종료 키워드