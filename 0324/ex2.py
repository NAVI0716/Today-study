import pickle

class A:
    def __init__(self,x):
        self.l=list(range(x))
    def __str__(self):
        return f"[{self.l}]"
class B:
    pass
c=pickle.load(open("data.p","rb"))
a=A(10)
print(a)
b=B()
pickle.dump(b,open("data.p","wb"))