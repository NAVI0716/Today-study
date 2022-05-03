poul= input().split()
poul1=list(set(poul))
poul_dict={}
for i in range(len(poul1)):
    count=poul.count(poul1[i])
    poul_dict[poul1[i]]=count
for key, value in poul_dict.items():
    if value == min(poul_dict.values()):
        print(key)
print(min(poul_dict.values()))