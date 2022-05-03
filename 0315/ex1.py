#a,b,c,d=input("정수 4개 입력(구분자=공백):").split()
#print(int(a),int(b),int(c),int(d))
#a,b,c,d=map(int,input("정수 4개 입력(구분자=공백):").split())
#a,b,c,d=map(eval,input("정수 4개 입력(구분자=공백):").split())  #eval 문자열의 수식연산
#print(type(d))
d=map(eval,input("기본자료형:").split())
print(d)