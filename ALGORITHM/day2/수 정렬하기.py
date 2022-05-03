number = int(input())
number_list=[]
for _ in range(number):
    number_sort=int(input())
    number_list.append(number_sort)
list_sorted=sorted(number_list)
for i in list_sorted:
    print(i)
