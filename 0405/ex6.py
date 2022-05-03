from selenium import webdriver#웹 컨트롤러#웹드라이버에서 가져온것내부의 내용을 불러옴
from selenium.webdriver.common.keys import Keys
import pyperclip
id="id"
pw="pw"
b=webdriver.Chrome()
b.get("http://naver.com")
b.implicitly_wait(10)
lc=b.find_element_by_class_name("link_login")
lc.click()
b.implicitly_wait(10)
in_id=b.find_element_by_id('id')
in_id.click()
b.implicitly_wait(10)
in_id.send_keys("cms5391")
b.implicitly_wait(10)
in_pw=b.find_element_by_id('pw')
in_pw.click()
b.implicitly_wait(10)
in_pw.send_keys("skgml48615")
b.implicitly_wait(10)
