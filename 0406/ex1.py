from bs4 import BeautifulSoup
import time
import warnings#무시하기
warnings.filterwarnings(('ignore'))
#접근방식
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
b=webdriver.Chrome()#컨트롤어 실행
b.implicitly_wait(10)#활성화 될때까지 대기
#time.sleep(초단위)스레드를 정지
b.get("http://naver.com")#경로 요청(페이지)
b.implicitly_wait(10)
b.find_element_by_xpath('//*[@id="NM_FAVORITE"]/div[1]/ul[2]/li[2]/a').click()
b.implicitly_wait(10)#활성화 될때까지 대기
b.find_element_by_xpath('/html/body/section/header/div[2]/div/div/div[1]/div/div/ul/li[6]/a').click()
b.implicitly_wait(10)#활성화 될때까지 대기
b.find_element_by_xpath('//*[@id="snb"]/ul/li[4]/a').click()
b.implicitly_wait(10)#활성화 될때까지 대기
#b.execute_script("window.scrollTo(0, document.body.scrollHeight)")
#time.sleep(10)
#리퀘스트해서 데이터 가져온것이랑 동일


b.implicitly_wait(10)
for page in range(1,6):
    print(f"{page}페이지")
    b.implicitly_wait(10)
    b.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    b.implicitly_wait(10)
    html = b.page_source
    b.implicitly_wait(10)
    b.find_element_by_xpath(f'// *[ @ id = "main_content"] / div[3] / a[{page}]').click()
    s = BeautifulSoup(html, "html.parser")
    data = s.select('dl')
    for i in data:
        if i.a:
            print(i.dd.previousSibling.previousSibling.text.strip())
            print(i.dd.span.text.strip())
            print()
    print("출력완료")
