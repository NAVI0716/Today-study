import requests
from bs4 import BeautifulSoup
url = 'https://finance.naver.com/sise/sise_rise.naver?sosok=1'
r=requests.get(url)
soup=BeautifulSoup(r.text,"html.parser")
data=soup.select("a.tltle")
data2=soup.select("td.number")
#l= [i for i in data2]
#a = [i for i in l[10]]
#b = [i for i in l[18]]
#print(a, end="")
#print(b)

for i in range(0,len(data)):
    print(f"종목명:{data[i].text}",end="    ")
    print(f"현재가:{data2[i * 10].text.strip()}", end="    ")
    print(f"전일비:{data2[i*10+1].text.strip()}",end="    ")
    print(f"등락률:{data2[i*10+2].text.strip()}")
    print("-"*20)

#for i in data:
#    print(i.text, end="")





