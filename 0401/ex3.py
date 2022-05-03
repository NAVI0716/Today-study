import re #정규화형태
#match("문자열"):처음부터 일치하는지 확인하는것
#search("문자열"):일치하는 문자가 있는지 확인
#findall("문자열"): 일치하는 모든것의 리스트 출력
#.문자
#^시작
#$끝
"""
ck=re.compile("data")
print(ck.match("data_in"))#기준삼아준것들로 매치
print(ck.search("in_data_in"))
print(ck.findall("in_data_in_data_in"))
"""
"""
ck=re.compile("^a")#시작이 a로 시작되는것이 무엇이있는가
print(ck.match("aata_data_att"))#기준삼아준것들로 매치
print(ck.search("aata_data_att"))
print(ck.findall("aata_data_att"))"""
"""
ck=re.compile("a$")#끝이 a로 공백으로 잡아줌
print(ck.match("a ata data att"))#기준삼아준것들로 매치
print(ck.search("a ata data att"))
print(ck.findall("a ata data att"))
"""
"""
ck=re.compile("a.a")
print(ck.match("a ata data att"))#기준삼아준것들로 매치
print(ck.search("a ata data att"))
print(ck.findall("a ata data att"))"""


def print_t(str):
    if str:
        print("일치문자", str.group())#데이터에 대해 문자ㅏ열  확인
        print("입력문자", str.string)
        print("일치문자시작", str.start())
        print("일치문자끝", str.end())
        print("일치문자 시작,끝", str.span())
    else:
        print("일치없음")

l=['abcd','adcd',"accd","abdc","cabcdd","c1234d","cddddd"]
ck=re.compile("^c....d$")
for i in l:
    str=ck.match(i)
    print_t(str)
    str=ck.search(i)
    print_t(str)
    print("all_data",ck.findall(i))
