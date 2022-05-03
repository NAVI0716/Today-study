numberpeople=5
people_score=[]
for i in range(numberpeople):
    score=list(map(int,input().split()))
    people_score.append(sum(score))
winner=max(people_score)
print(people_score.index(winner)+1,end=" ")
print(winner)
