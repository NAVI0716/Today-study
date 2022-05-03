import requests#수집
from bs4 import BeautifulSoup#정리
import sqlite3


def 저장(db,data):
    conn=sqlite3.connect(db)
    c=conn.cursor()
    c.execute('DROP TABLE IF EXISTS data')
    c.execute("""
                CREATE TABLE data(
                    제목 text,
                    평점 text,
                    후기 text
                )
            """)
    c.executemany('INSERT INTO data VALUES (:제목,:평점,:후기)', data)
    conn.commit()
    conn.close()
def 출력(db):
    conn=sqlite3.connect(db)
    c=conn.cursor()
    c.execute('SELECT * FROM data')
    for i in c.fetchall():
        print(f"제목:{i[0]}")
        print(f"평점:{i[1]}")
        print(f"후기:{i[2]}")
        print("----------------------------------"*3)
def 추출(url):
    page=10
    r=requests.get(url+str(page))
    r.raise_for_status()#정상적으로 동작되면 200으로 나오고 비정상적이면 예외처리된다./ 접속상태확인 (접속코드200 아닐시 예외발생)
    html=r.text
    soup=BeautifulSoup(html,'html.parser')
    data1=soup.find_all("td", attrs={"class":"title"})
    data=[]
    for i in data1:
        if i.a:
            datas={"제목":i.a.get_text().strip(),"평점":i.em.text,"후기":i.br.next_sibling.strip()}
            data.append(datas)
    return data
data=추출("https://movie.naver.com/movie/point/af/list.naver?&page=")
저장("data.db",data)
출력("data.db")