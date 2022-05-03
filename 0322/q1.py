class 차종류():
    def __init__(self,이름,엔진가격,타이어가격,옵션,옵션이름,최고속도):
        self.이름 = 이름
        self.엔진가격 = 엔진가격
        self.타이어가격 = 타이어가격
        self.옵션 = 옵션
        self.옵션이름 = 옵션이름
        self.최고속도 = 최고속도
        self.구매가격 = 0

    def 옵션(self):
        print(f"옵션:{self.옵션}")

    def max속도(self):
        return int(self.최고속도)


    def 자동차정보입력(self):
        print(f"이름:{self.이름}")
        print(f"엔진가격:{self.엔진가격}")
        print(f"타이어가격:{self.타이어가격}")
        print(f"옵션:{self.옵션}")
        print(f"옵션이름:{self.옵션이름}")
        print(f"최고속도:{self.최고속도}")
        print(f"구매가격:{self.타이어가격 + self.엔진가격}")

    def 구매가격(self):
        print(f"구매가격:{self.타이어가격 + self.엔진가격}")




class 고물차(차종류):
    pass

class 슈퍼카(차종류):
    pass
입력=0
차이름=0
속도=[]
while 입력!=6:
    print("#### 자동차 정보 입력 프로그램 ####")
    print("1.자동차 정보 입력")
    print("2.저장된 목록 보기")
    print("3.각 자동차의 구매 가격 조회")
    print("4.옵션이 있는 자동차 정보 조회")
    print("5.빠른 자동차와 느린 자동차의 속도차 조회")
    print("6.프로그램 이용 종료")
    print("###############################")
    입력=int(input("입력:"))
    if 입력==1:
        차이름=input("차이름:")

        차이름_슈퍼카 = 슈퍼카("슈퍼카",900,500,"있음","썬루프",300)
        차이름_고물차 = 고물차("고물차",473,365,"없음","없음",23)

    elif 입력==2:
        if 차이름 == "슈퍼카":
            차이름_슈퍼카.자동차정보입력()
        elif 차이름 == "고물차":
            차이름_고물차.자동자정보입력()
        else:
            pass
    elif 입력==3:
        if 차이름 == "슈퍼카":
            차이름_슈퍼카.구매가격()
        elif 차이름 == "고물차":
            차이름_고물차.구매가격()
        else:
            pass
    elif 입력==4:
        if 차이름== "슈퍼카":
            차이름_슈퍼카.옵션()
        elif 차이름 == "고물차":
            차이름_고물차.옵션()
        else:
            pass
    elif 입력==5:
        속도.append(차이름_슈퍼카.max속도())
        속도.append(차이름_고물차.max속도())
        print(속도)
        print(f"속도차조회:{max(속도)-min(속도)}")
    else:
        pass










