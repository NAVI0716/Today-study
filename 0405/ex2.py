import time
from selenium import webdriver#웹 컨트롤러#웹드라이버에서 가져온것내부의 내용을 불러옴
from selenium.webdriver.common.keys import Keys
browser=webdriver.Chrome()
browser.get("http://www.google.com")
browser.implicitly_wait(10)
#n=browser.find_element_by_css_selector("input.gLFyf.gsfi").send_keys("python")
l=browser.find_element_by_xpath("/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input")
l.send_keys("뉴스")
browser.implicitly_wait(10)
l.send_keys(Keys.ENTER)
browser.implicitly_wait(10)
browser.execute_script("window.scrollTo(0, 500);")
browser.implicitly_wait(10)
ck=browser.find_element_by_xpath('//*[@id="rso"]/div[2]/div/div/div[1]/div/a/div/cite')
ck.click()
browser.implicitly_wait(10)


browser.execute_script(f"window.scrollTo(0, 500)")
