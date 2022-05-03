#pickle 모듈 #직렬화 역직렬화
import pickle

w_f=open("save_data.p","wb")#p는 피클모드
l=[1,2,3,4,5,6,7,8,9]
dic=dict.fromkeys(l,"data")
pickle.dump(l,w_f)#dump= 넣는다
pickle.dump(dic,w_f)
w_f.close()

i_f=open("save_data.p","rb")
l=pickle.load(i_f)
print(l)
d=pickle.load(i_f)
print(d)