import requests
from bs4 import BeautifulSoup

url = 'http://www.hanbit.co.kr/store/books/full_book_list.html'
import requests
r=requests.get(url)
#print(r.text)
soup=BeautifulSoup(r.text,"lxml")
#print(soup.title)#타이틀의 파라미터값만 불러옴
#print(soup)#soup은 필요한것을 찾기위해사용
#print(soup.title.get_text())
#print(soup.a.attrs)
#print(soup.a['href'])#내부 속성값 제일 첫번째값 불러옴
#print(soup.find('a',attrs={"href":"/store/books/look.php?p_code=B9483006177"}).get_text())#담겨있는거에서 필요로하는것을#.attrs :속성에 대한 정보값
#print(soup.find('a',attrs={"href":"/store/books/look.php?p_code=B5744853316"}).get_text())
#print(soup.find(attrs={"href":"/store/books/look.php?p_code=B5744853316"}))
print(soup.find('div',attrs={'class':"full_book_list_wrap"}))
k=soup.find('div',attrs={'class':"full_book_list_wrap"})
print(type(soup))
print(type(k))