import requests
from bs4 import BeautifulSoup
url = 'https://movie.naver.com/movie/point/af/list.naver'
r=requests.get(url)
soup=BeautifulSoup(r.text,"html.parser")
"""
data=soup.find_all("td",attrs={"class":"title"})
#print(data.a.get_text())
#print(data.a)
for i in data:
    print(i.a.get_text())
"""
for i in soup.select('td[class=title]'):
    print(i.a.text.strip())