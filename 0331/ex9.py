#3가지의 동작

from urllib.request import urlopen #요청이 가지고있는 url 꺼내오는 작업
import re
from html import unescape
import  sqlite3
def 추출(url):
    f=urlopen(url)#url불러옴
    encoding=f.info().get_content_charset(failobj="utf-8")#f안의 content의 문자로된 정보를 불러온다
    html = f.read().decode(encoding) #파일의 바뀌어진 정보를 읽어서 가져온다
    return html
def 정규화(html):#내가 원하는대로 형식으로 추출하는것
    data=[]
    for i in re.findall(r'<td class="left"><a.*?</td>',html,re.DOTALL): #r로시작한는 입력값에 따른 규칙의 데이터의 성질들을 입력받은 html을 이용해서 가지고온다
        url = re.search(r'<a href="(.*?)">',i).group(1)#group1에서 하나의 값을 꺼내겠다
        url="http://www.hanbit.co.kr"+url
        title = re.sub(r'<.*?>','',i)#입력되어있는 태그값을 제거해주는 작업/뾰족가로안에 있는것들 변화됨
        title=unescape(title)#변화된 데이터를 원래값으로 변환
        data.append({'url':url,"title":title})
    return data


def 저장(db,data):
    conn = sqlite3.connect(db)#경로에 연결
    c=conn.cursor()
    c.execute('DROP TABLE IF EXISTS data')
    c.execute('''
            CREATE TABLE data(
                title text,
                url text
            )
    ''')
    c.executemany('INSERT INTO data VALUES (:title, :url)', data)
    conn.commit()
    conn.close()

def 출력(db):
    conn = sqlite3.connect(db)#연결
    c = conn.cursor()#커서만들기
    c.execute('SELECT * FROM data')#읽어온다
    for i in c.fetchall():
        print(i)


if __name__=="__main__":
    html=추출("http://www.hanbit.co.kr/store/books/full_book_list.html")
    #print(html)
    data=정규화(html)
    print(data)
    저장("data.db",data)
    출력("data.db")
#def main():
