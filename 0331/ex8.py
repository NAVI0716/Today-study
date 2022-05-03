import html #구성요소들을 가지고있기 때문에 변경해서 .구분해서 사용가능
data="<span class=veta_bd_t> data </span>"
out_data=html.escape(data)#걸러주는 역할 / 의미를 가지는 것을 문자화 해줄수있ㄸ다 escape
print(out_data)
c_data=html.unescape(out_data)#전달된 데이터에 대한 표현들을 바꿔준다
print(c_data)