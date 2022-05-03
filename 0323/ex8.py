import pickle
pickle.dump([1,2,3,4,5],open("data1.p","wb"))
#i_f=open("data.p","rb")
#l=[]
try:
    tk=open("data1.p","rb")
    #x=pickle.load(open("data1.p","rb"))
    #for i in range(100):
    #    l.append((pickle.load(i_f)))
except:
    print("예외실행")

else:
    x=pickle.load(tk)
    print("예외 미발생시 동작")
    tk.close()
#finally:#except에서도 예외가 발생할수있으머ㅡ로 무조건 실행되는 블록
#    print("반드시 실행되는 블록")
#except:
#    l=[]