l=[1,2,3,4,5]
try:#예외처리문
    x=l[4]
    print("동작")
    int(1)
    open()
#except Exception:#순서대로 확인함 위에서 동작하면 아래에서 동작 안함
#     print("예외")
except ValueError and TypeError:#반드시 except 사용
     print("값 예외 발생")

except IndexError:
    print("인덱스예외 발생")
    #예외들은 클래스로 구축되어있다
