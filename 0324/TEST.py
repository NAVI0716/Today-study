import pickle
class 스토어():
    임시id기록=[]
    임시기록=[]
    검색기록=[]
    ID_LIST=[]
class 개인정보(스토어):
    def __init__(self,ID,현재자금):
        self.ID=ID
        self.현재자금=현재자금

    def ID지정(self):
        return self.ID


class 아이D(스토어):
    def __init__(self,id검색목록):
        self.id검색목록=id검색목록

class id로검색(스토어):
    def __init__(self,검색목록):
        self.검색목록=검색목록
 #class ID지정검색(개인정보.ID지정()):
  #      pass

화면=f"""
>~~~~~~~~~~<   천냥할인 스토어    >~~~~~~~~~~
1.  ID로그인
2.  스토어검색
3. 검색기록
4. 종료
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

    while 검색하기 !="":
        검색하기 = input("검색,(공백시 검색종료):")
        스토어.임시기록.append(id로검색(검색하기))
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
                print(스토어.검색기록)



def 종료():
    print("종료하겠습니다.")
    return True
def main():
    m=ID로그인,스토어검색,검색기록,종료
    m_i = int(input(화면))
    if m_i not in range(1, len(m) + 1):
        print("잘못입력되었습니다.")
        return
    return m[m_i-1]()

if __name__=="__main__":
    run=False
    while not run:
        run=main()