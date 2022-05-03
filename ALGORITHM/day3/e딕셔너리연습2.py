number= int(input())
country_dic={}
for _ in range(number):    
    country= input().split()
    country_dic[country[0]]=country[1]
search=input()
print(country_dic.get(search, "Unknown Country"))

