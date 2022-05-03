import requests
from bs4 import BeautifulSoup

url = 'http://www.hanbit.co.kr/store/books/full_book_list.html'
r=requests.get(url)
soup=BeautifulSoup(r.text,"html.parser")

data=soup.find_all("td",attrs={"class":"left"})

data_all=list(data)
for i in data_all:
    if i.a:
        print(i.a.text)
