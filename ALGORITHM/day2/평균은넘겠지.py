peoplenumber=int(input())
pass_people=[]
for i in range(peoplenumber):
    people=list(map(int,input().split()))
    people_mean=sum(people[1:])/people[0]
    mean=round(people_mean,3)
    pass_score=0
    for j in people[1:]:
        if mean<j:
            pass_score+=1   
    pass1=pass_score/len(people[1:])*100 
    pass2="{:.3f}".format(pass1)
    #pass2_1=float(pass2)
    pass_people.append(pass2+'%')
for i in pass_people:
    print(i)
    


