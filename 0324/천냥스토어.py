import pickle
class 스토어():
    구매목록 = []
    임시id기록=[]
    임시기록=[]
    검색기록=[]
    ID_LIST=[]
    총합=0
class 개인정보(스토어):
    def __init__(self,ID,현재자금):
        self.ID=ID
        self.현재자금=현재자금




class 아이D(스토어):
    def __init__(self,id검색목록):
        self.id검색목록=id검색목록

class id로검색(스토어):
    def __init__(self,검색목록):
        self.검색목록=검색목록
 #class ID지정검색(개인정보.ID지정()):
  #      pass

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
    ID=input("ID:")
    현재자금=int(input("현재자금:"))
    스토어.임시id기록.append(아이D(ID))
    스토어.ID_LIST.append(개인정보(ID,현재자금))
    print("로그인 성공하셨습니다.")

def 스토어검색():
    검색하기=0
    스토어.총합=0
    while 검색하기 !="":
        검색하기 = input("검색,(공백시 검색종료):")
        스토어.임시기록.append(id로검색(검색하기))
        스토어.총합+=1

    스토어.검색기록.append(스토어.임시id기록+스토어.임시기록)


def 검색기록():

    ID검색기록=input("id검색기록)")
    for i in 스토어.ID_LIST:
        if ID검색기록 != i.ID:
            print("로그인을 하지않아 사용이 불가능합니다.")
            return
        else:
            if len(스토어.검색기록) == 0:
                print("검색기록존재하지않습니다.")
            else:
                for i in 스토어.검색기록[0]:
                    print(i)


def 구매목록체크():
    스토어.구매목록 = []
    if len(스토어.검색기록) == 0:
        print("검색기록존재하지않습니다.")
    else:
        for i in 스토어.검색기록[0][1:스토어.총합]:
            print(i,end="")
            저장=int(input(":(체크면1아니면0)"))
            if 저장 == 0:
                pass
            else:
                스토어.구매목록.append(i)
        for i in 스토어.구매목록:
            print(i)



def 구매_및_현재자금():
    a=0
    총자금=0
    for i in 스토어.구매목록:
        a+=1
    구매한id = input("id:")
    print(f"총구매수:{a}개")

    for i in 스토어.ID_LIST:
        if int(i) == 개인정보.get_현재자금():
            총자금=int(i)-(1000*a)
            스토어.ID_LIST = 스토어.ID_LIST(구매한id, 총자금)
        else:
            pass

    print(f"현재자금:{스토어.ID_LIST}")



def 종료():
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
