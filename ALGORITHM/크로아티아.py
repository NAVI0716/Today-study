word=input()
count=0
count1=0
croatia=["c=","c-","dz=","d-","lj","nj","s=","z="]
for i in croatia:
    if i in word:
        if i=="dz=":
            count1+=1
        else:
            count+=1
print(len(word)+count+count1-2*count-3*count1)