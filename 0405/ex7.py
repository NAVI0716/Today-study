from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import pyperclip
id="cms5391"
pw="dpffls48615"
b=webdriver.Chrome()
b.implicitly_wait(10)
b.get("http://naver.com")
b.implicitly_wait(10)
ck=b.find_element_by_xpath('//*[@id="account"]/a')
ck.click()
b.implicitly_wait(10)

in_id=b.find_element_by_xpath('//*[@id="id"]')
in_id.click()

pyperclip.copy(id)
in_id.send_keys(Keys.CONTROL,'v')
b.implicitly_wait(10)

in_pw=b.find_element_by_xpath('//*[@id="pw"]')
in_pw.click()

pyperclip.copy(pw)
in_pw.send_keys(Keys.CONTROL,'v')
b.implicitly_wait(10)

b.find_element_by_xpath('//*[@id="log.login"]').click()

b.find_element_by_xpath('//*[@id="new.dontsave"]').click()
b.find_element_by_xpath('//*[@id="NM_FAVORITE"]/div[1]/ul[2]/li[2]/a').click()
b.find_element_by_xpath('/html/body/section/header/div[2]/div/div/div[1]/div/div/ul/li[6]/a/span').click()
b.implicitly_wait(10)
b.find_element_by_xpath('//*[@id="snb"]/ul/li[8]/a').click()
b.implicitly_wait(10)
data_l=[]
for i in range(1,11):
    data_l.append(b.find_element_by_xpath(f'//*[@id="main_content"]/div[2]/ul[1]/li[{i}]/dl/dt[2]/a').text )
    b.implicitly_wait(10)
print(data_l)


