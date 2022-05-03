j_data2={
    "key4":"data1",
    "key5":"data2",
    "key6":"data3",
    "key7":[100,"data"]
}
j_data1={
    "key1":"data1",
    "key2":"data2",
    "key3":"data3",
    "key4":[j_data2,0.0]#데이터는 간접저장, True = 1이라는 숫자값, none = 다른데이터에 영향을 주지않음
}

#all_data=j_data1+j_data2

import json
with open("data.json",'w') as f: #json은 문자열이 기반
    json.dump(j_data1,f)#객체이기때문에 dump(를저장해준다,f에)
 #   json.dump(j_data2, f)