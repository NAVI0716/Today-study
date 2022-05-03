from collections import deque
class S_list:
    class Node:#중첩클래스
        def __init__(self,data=None,link=None):
            self.data=data
            self.link=link
    def __init__(self):
        self.h=None
    def f_add(self,data):
        self.h=self.Node(data,self.h)
    def pop(self):
        out_data=self.h.data
        self.h=self.h.link
        return out_data
    def print_l(self):
        pt=self.h
        while pt.link:
            print(pt.data,end="->")
            pt=pt.link
        else:
            print(pt.data)

"""
a=Node(10)
a.link=Node(20)
a.link.link=Node(30)
pt=a
while pt:
    print(pt.data,end=" ")
    pt=pt.link
"""
l=list()
s_l=S_list()
s_l.f_add(10)
s_l.f_add(20)
s_l.f_add(30)
s_l.print_l()
print(s_l.pop())
s_l.print_l()
print(l)
l=[]
l.append(10)
l.append(20)
l.append(30)
l.pop(0)
l1=list("data")
l2=deque("data")
l2.append("10")
print(l1)
print(l2)
l2.appendleft("10")
print(l2)
l2.extend("10")
print(l2)
l2.extendleft("10")
print(l2)