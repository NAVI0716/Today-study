import sqlite3
data=[{"종목":"캐리소프트","현재가":"10,800","PER":"-33.64"}]
db="data.db"
def 저장(db,data):#db는 연결
    conn=sqlite3.connect(db)#연결
    c=conn.cursor()
    c.execute('DROP TABLE IF EXISTS data')#db_data(data) 테이블 초기화
    c.execute('''
                CREATE TABLE data (
                    종목 text,
                    PER text
                )                    
            ''')#데이터 지정해줌

    c.executemany('INSERT INTO data VALUES (:종목, :PER)', data)
    conn.commit()
    conn.close()
def 출력(db):
    conn = sqlite3.connect(db)
    c = conn.cursor()
    c.execute('SELECT * FROM data')
    for i in c.fetchall():
        print(i)
저장(db,data)
출력(db)

