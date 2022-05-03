import requests
from bs4 import BeautifulSoup
url = 'https://finance.naver.com/sise/sise_rise.naver'
r=requests.get(url)
soup=BeautifulSoup(r.text,"html.parser")
data=soup.select("a.tltle")
data2=soup.select("td.number")
l= [i for i in data2]
l=[]
for i in data2:
    l.append(i)
#print(l)
a=[]
for i in l[10]:
    a.append(i)
print(a)
#a = [i for i in l[10]]
#b = [i for i in l[18]]

#for i in data2:
#    l[i]=i
#print(l)
#for i in l[10]:
#    a=list(l[10])
#print(a)
#print(a, end="")
#print(b)
