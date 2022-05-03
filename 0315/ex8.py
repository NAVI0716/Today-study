"""
l=[]
l.append(1)
l.append(2)
l.append("data")
print(l)
l.extend("1234")
print(l)
print(len(l))
l.append([1,2,3,4])
print(l)
l.extend([1])
print(l)
l.insert(2,789)
print(l)
l.insert(0,8)
print(l)
l[1]=99
print(l)
print(len(l))
l.pop()
print(l)
l.pop(0)
print(l)
l.remove([1,2,3,4])
print(l)
l=[1,2,3,4,5]
print(l.count(1))
print(l.index(3))
print(l)
l=[8,6,1,8,3,4,5,2,8,9]
l.reverse()
print(l)
l.sort()
print(l)
"""
#sorted는 값을 오름차순으로 정렬한다. 기존의 값이 유지되어 기존의 값은 정렬되지않는다.
l=[1,9,8,4,5,18,7,42,9,51]
print(sorted(l))
print(l)

print()

#sort는 sorted와 마찬가지로 값을 오름차순으로 정렬하는데 기존의 값이 정렬된 값으로 바뀐다.
l=[1,9,8,4,5,18,7,42,9,51]
print(l.sort())
print(l)