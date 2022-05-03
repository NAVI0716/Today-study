from selenium import webdriver#웹 컨트롤러#웹드라이버에서 가져온것내부의 내용을 불러옴
from selenium.webdriver.common.keys import Keys
import pyperclip
id="cms5391"#로그인할 아이디
pw="dpffls48615"#로그인할 비번
b=webdriver.Chrome()
b.get("http://naver.com")
b.implicitly_wait(10)#화면이 뜰때까지 기다려
lc=b.find_element_by_class_name("link_login")
lc.click()
b.implicitly_wait(10)

in_id=b.find_element_by_id('id')
in_id.click()

pyperclip.copy(id)#복사
in_id.send_keys(Keys.CONTROL,'v')#붙여넣기

in_pw=b.find_element_by_id('pw')
in_pw.click()

pyperclip.copy(pw)#복사
in_pw.send_keys(Keys.CONTROL,'v')#붙여넣기
b.implicitly_wait(10)

b.find_element_by_id("log.login").click()
