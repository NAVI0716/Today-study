import sqlite3
import requests
from bs4 import BeautifulSoup
def 추출(url):
    r=requests.get(url)
    html_d=r.text
    soup=BeautifulSoup(html_d, 'html.parser')
    data1=soup.select("td")
    l=[]
    def f(n,x):
        for i in range(x):
            n=n.next_sibling
        return n.text.strip()
    for i in data1:
        if i.a:
            datas={"종목명":i.a.text, "현재가":f(i,2), "전일비":f(i,4), "등락률":f(i,6), "거래량":f(i,8), "매수호가":f(i,10), "매도호가":f(i,12), "매수총잔량":f(i,14), "매도총잔량":f(i,16), "ROE":f(i,20), "PER":f(i,18)}
            l.append(datas)
    data=[]
    for i in range(len(l)):
        data.append(l[i])
    return (data)

def 저장(db,data):#db는 연결
    conn=sqlite3.connect(db)#연결
    c=conn.cursor()
    c.execute('DROP TABLE IF EXISTS data')  # db_data(data) 테이블 초기화
    c.execute('''
                CREATE TABLE data (
                    종목명 text,
                    현재가 text,
                    전일비 text,
                    등락률 text,
                    거래량 text,
                    매수호가 text,
                    매도호가 text,
                    매수총잔량 text,
                    매도총잔량 text, 
                    ROE text,                  
                    PER text
                    )                    
                ''')#데이터 지정해줌

    c.executemany('INSERT INTO data VALUES (:종목명, :현재가, :전일비, :등락률, :거래량, :매수호가, :매도호가, :매수총잔량, :매도총잔량, :ROE, :PER)', data)
    conn.commit()
    conn.close()
def 출력(db):
        conn = sqlite3.connect(db)
        c = conn.cursor()
        c.execute('SELECT * FROM data')
        for i in c.fetchall():
            print(i)
            print()

if __name__=="__main__":
    data=추출("https://finance.naver.com/sise/sise_rise.naver?sosok=1")
    저장("data.db",data)
    출력("data.db")