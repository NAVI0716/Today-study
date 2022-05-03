from bs4 import BeautifulSoup

url = 'http://www.hanbit.co.kr/store/books/full_book_list.html'
import requests
r=requests.get(url)
#print(r.text)
soup=BeautifulSoup(r.text,"lxml")
t2=soup.find("div")
#print(t2)
#print(type(t2))
print(t2.get_text())
print("-"*20)
t2=t2.next_sibling.next_sibling#t2.에서 시작해서 다음단계로
print(t2.get_text())
print("-"*20)
t3=soup.find_all("div")
l_t3=list(t3)[:2]
for i in l_t3:
    print(i.get_text())
    print("-"*20)