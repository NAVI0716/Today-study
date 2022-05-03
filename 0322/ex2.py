class A:
    x=0
    y=0
    def __init__(self,x,y):
        self.x=x
        self.y=y
    def __add__(self, other):
        x =self.x+other.x
        y =self.y+other.y
        return A(x,y)

    def __sub__(self, other):
        x = self.x + other.x
        y = self.y + other.y
        return A(x,y)

    def __mul__(self, other):
        x = self.x * other.x
        y = self.y * other.y
        return A(x,y)

    def __floordiv__(self, other):
        x = self.x // other.x
        y = self.y // other.y
        return A(x,y)
class B:
    x=0
    y=0

t1=A(5,4)
t2=A(5,6)

print(t1.x,t1.y)
c=t1+t2
d=t1*t2
print(t1.x,t1.y)
print(c.x,c.y)
print(d.x,d.y)
c1=B()
c2=B()
#print(c1.x,c1.y)
#c1+c2
#print(c1.x,c1.y)