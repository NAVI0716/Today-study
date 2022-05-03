
import re#정규표현식 :표현식에 대한것을 추출해서  데이터로 가져온다
import sys
from urllib.request import urlopen
f=urlopen('http://www.hanbit.co.kr/store/books/full_book_list.html')
bytes_content = f.read()
scanned_text=bytes_content[:1024].decode('ascii',errors='replace')
print(scanned_text)
match = re.search(r'charset=["\']?([\w-]+)',scanned_text)

if match:
    encoding = match.group(1)
else:
    encoding = 'utf-8'
print('encoding:',encoding, file=sys.stderr)
text=bytes_content.decode(encoding)
print(text)