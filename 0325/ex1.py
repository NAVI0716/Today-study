import pickle
class 스토어():
    구매목록 = []
    임시목록 = []
    검색기록=[]
    ID_LIST=[]
    총합=0
class 개인정보(스토어):
    def __init__(self,ID,현재자금):
        self.ID=ID
        self.현재자금=현재자금

    def get_ID(self):
        return self.ID

    def get_현재자금(self):
        return self.현재자금



class id로검색(스토어):
    def __init__(self,검색목록):
        self.검색목록=검색목록
 #class ID지정검색(개인정보.ID지정()):
  #      pass
try:
    스토어.ID_LIST=pickle.load(open("save_data1.p","rb"))
    스토어.구매목록 = pickle.load(open("save_data2.p", "rb"))
    스토어.검색기록=pickle.load(open("save_data3.p","rb"))

except:
    스토어.ID_LIST=[]
    스토어.구매목록=[]
    스토어.검색기록=[]
화면=f"""
>~~~~~~~~~~<   천냥 스토어    >~~~~~~~~~~
1.  ID로그인
2.  스토어검색
3.	검색기록
4.	구매목록체크
5.	구매 및 현재자금
6.	종료
>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<
"""
def ID로그인():
    print("ID정보를 입력해주세요.")
    ID = input("ID:")
    현재자금 = int(input("현재자금:"))
    스토어.검색기록.append(id로검색(ID))
    스토어.ID_LIST.append(개인정보(ID, 현재자금))
    print("로그인 성공하셨습니다.")


def 스토어검색():
    검색하기=0
    총합=0
    while 검색하기 !="":
        검색하기 = input("검색,(공백시 검색종료):")
        스토어.검색기록.append(id로검색(검색하기))
        스토어.임시목록.append(id로검색(검색하기))
        총합 += 1

    del 스토어.임시목록[총합-1]




def 검색기록():

    ID검색기록=input("id검색기록:")
    for i in 스토어.ID_LIST:
        if ID검색기록 != i.ID:
            print("id정보가 일치하지않아 사용이 불가능합니다.")
            return
        else:
            if len(스토어.검색기록) == 0:
                print("검색기록존재하지않습니다.")
            else:
                print("-" * 35)
                for i in 스토어.검색기록:
                    print(i.검색목록)



def 구매목록체크():
    스토어.구매목록 = []
    ID검색기록 = input("id검색기록)")
    for i in 스토어.ID_LIST:
        if ID검색기록 != i.ID:
            print("로그인을 하지않아 사용이 불가능합니다.")
            return
        else:
            if len(스토어.임시목록) == 0:
                print("검색기록존재하지않습니다.")
            else:
                for j in 스토어.임시목록:
                    print(j.검색목록,end="")
                    저장=int(input("(체크면1아니면0):"))
                    if 저장 == 0:
                        pass
                    else:
                        스토어.구매목록.append(j)
    for i in 스토어.구매목록:
        print(i.검색목록)




def 구매_및_현재자금():
    a=0
    총자금=0
    for i in 스토어.구매목록:
        a+=1
    구매한id = input("id:")


    for i in 스토어.ID_LIST:
        if i.get_ID() == 구매한id:
            print(f"총구매수:{a}개")
            for j in 스토어.ID_LIST:
                총자금=j.현재자금-(1000*a)
                스토어.ID_LIST.clear()
                스토어.ID_LIST.append(개인정보(i.get_ID(),총자금))
        else:
            print("아이디가 일치하지 않습니다.")

    for k in 스토어.ID_LIST:
        print(f"{k.get_ID()}의 현재자금은 {k.get_현재자금()}입니다.")






def 종료():
    pickle.dump(스토어.ID_LIST, open("save_data1.p", "wb"))
    pickle.dump(스토어.구매목록, open("save_data2.p", "wb"))
    pickle.dump(스토어.검색기록, open("save_data3.p", "wb"))
    print("종료하겠습니다.")
    return True

def main():

    m=ID로그인,스토어검색,검색기록,구매목록체크,구매_및_현재자금,종료
    m_i = int(input(화면))
    if m_i not in range(1, len(m) + 1):
        print("잘못입력되었습니다.")
        return
    return m[m_i-1]()

if __name__=="__main__":
    run=False
    while not run:
        run=main()
