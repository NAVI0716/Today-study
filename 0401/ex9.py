import requests
from bs4 import BeautifulSoup
url = 'https://movie.naver.com/movie/point/af/list.naver'
r=requests.get(url)
soup=BeautifulSoup(r.text,"html.parser")

data=soup.select("td.title")#태그를하겠다 제공하는 모든것들을
"""l_data=list(data)
print(l_data)
for i in l_data:
    if i.find_all("a",attrs={"class":"report"}):
        datal=list(i.find_all("a",attrs={"class":"report"}))
        print(datal)"""
for i in data:
    l=list(i)
    print(l[6].strip())
#l=[i for i in data]
#a=[i for i in l[0]]

#for i in data:
#    print(i.br.next_sibling.strip())







