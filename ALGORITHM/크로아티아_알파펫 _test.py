word=list(input())
croatia=["c=","c-","dz=","d-","lj","nj","s=","z="]
count=0
count_1=0
count_2=0
for i in word:
    if word.index(i)<len(word)-3:
        croatia_word1=i+word[word.index(i)+1]+word[word.index(i)+2]
        if croatia_word1 not in croatia:
            pass            
        else:
            count_2+=1
            word.pop(word.index(i))
            word.pop(word.index(i))
            word.pop(word.index(i))
    if word.index(i)<len(word)-2:
        croatia_word=i+word[word.index(i)+1]
        if croatia_word not in croatia:
            pass
        else:
            count_1+=1
                

            

print(len(word)-(count_1*2)-(count_2*3)+count_1+count_2)        
 
