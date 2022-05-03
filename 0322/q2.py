#계좌 정보 관리 프로그램
class 은행():
        def __init__(self,계좌번호,계좌주,예금액):
            self.계좌번호 = 계좌번호
            self.계좌주 = 계좌주
            self.예금액 = 예금액

        def 계좌정보목록(self):
            print(f"{self.계좌번호}    {self.계좌주}    {self.예금액}")



class 개인(은행):
    pass


목록=0
while 목록!=5:
    print("-" * 45)
    print("1.계좌생성 | 2.계좌목록 | 3.예금 | 4.출금 | 5.종료")
    print("-" * 45)
    목록=int(input("선택>"))
    if 목록==1:
        print("-"*15)
        print("계좌생성")
        print("-"*15)
        계좌번호=input("계좌번호:")
        계좌주=input("계좌주")
        금액=int(input("초기입금액:"))
        개인이름=개인(계좌번호,계좌주,금액)
        print("결과: 계좌가 생성되었습니다.")


    elif 목록==2:
        print("-" * 15)
        print("계좌목록")
        print("-" * 15)
        개인이름.계좌정보목록()

    elif 목록==3:
        print("-" * 15)
        print("예금")
        print("-" * 15)
        print(f"계좌번호: {개인이름.계좌번호}")
        추가금=int(input("예금액:"))
        개인이름.예금액=추가금+개인이름.예금액
        print("결과: 예금이 성공되었습니다.")


    elif 목록 == 4:
        print("-" * 15)
        print("출금")
        print("-" * 15)
        print(f"계좌번호: {개인이름.계좌번호}")
        추출금=int(input("출금액:"))
        개인이름.예금액 = 개인이름.예금액-추출금
        print("결과: 출금이 성공되었습니다.")

    else:
        pass
print("프로그램 종료")


