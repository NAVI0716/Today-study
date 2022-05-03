name=input()
name_dict={}
name_number=[]
count=-1
NAME_LIST=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
if len(name) >= 2 and len(name) <= 15:
    for i in NAME_LIST:
        count+=1
        if count < 3:
            name_dict[i]=3
        elif count > 2 and count < 6:
            name_dict[i]=4
        elif count > 5 and count < 9:
            name_dict[i]=5
        elif count > 8 and count < 12:
            name_dict[i]=6
        elif count > 11 and count < 15:
            name_dict[i]=7
        elif count > 14 and count < 19:
            name_dict[i]=8
        elif count > 18 and count < 22:
            name_dict[i]=9
        elif count > 21 and count < 26:
            name_dict[i]=10
        else:
            pass
    for i in name:
        for key, value in name_dict.items():
            if i == key:
                name_number.append(value)
    print(name_number)
    print(sum(name_number))
