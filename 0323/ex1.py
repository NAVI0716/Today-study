def f():
    print("특별함수")
if __name__=="__main__":
    print("실행")


s=set([1,2,3,1,23,4,1,32,4,2,3,1,3,4])
print(s)
dic=dict.fromkeys(s,0)
print(dic)
