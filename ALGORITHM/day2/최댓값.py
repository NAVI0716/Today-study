# number_list=[]
# for _ in range(9):
#     number_get=int(input())
#     number_list.append(number_get)
# number_max=max(number_list)
# print(number_max)
# print(number_list.index(number_max)+1)
number_list=[int(input()) for _ in range(9)]
number_max=max(number_list)
print(number_max)
print(number_list.index(number_max)+1)