#동적크롤링
#import selenium #웹 자동화
import time
from selenium import webdriver #웹 페이지 컨트롤러
#from bs4 import BeautifulSoup
#op=webdriver.ChromeOptions()#웹 컨트롤러의 옵션툴 설정
#op.add_argument("window-size=1920x1080")#지정된 크기로 페이지 요청
##봇으로 인식되지   않도록 설정을 한다.(단, 직접적으로 페이지를 연다면 사용하지않아도된다.)
#op.add_argument('user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36')
#b=webdriver.Chrome(options=op)#상위에 지정한 옵션으로 크롬실행
b=webdriver.Chrome()
b.maximize_window()
url="http://google.com"
b.get(url)
b.implicitly_wait(10)
#in_d=b.find_element_by_xpath('//*[@id="input"]')#특정장소 선택
#in_d.send_keys("뉴스")#값입력
in_d=b.find_element_by_class_name('gLFyf gsfi')
time.sleep(10)