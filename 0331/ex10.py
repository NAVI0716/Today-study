from html.parser import HTMLParser #구성요소중에서 내가필요한부분을 정리하려한다. 정리해주는 요소 <-#크롤링 스크랩핑은 문서화해서 통채로 다가져온것
class 추출(HTMLParser):
    def __init__(self):#생성자를 만들면 오버라이딩된다
        HTMLParser.__init__(self)#하나의 제시만 한다면 생성자를 사용가능하다#super 대신 클래스에 존재하는 인스턴스매소드를 불러와서 사용
        self.is_strong = False #있다없다를 확인하는것
    def handle_starttag(self, tag, attrs):#오버라이딩해준다/태그가 시작되었느냐
        if tag == 'strong':
            self.is_strong = True

    def handle_endtag(self, tag):#끝났는지 확인
        if tag == 'strong':
            self.is_strong = False

    def handle_data(self, data):#스트링 데이터로 불러온다.참인경우일때 읽는다
        if self.is_strong:
            print(data)

with open("data.html") as f: #열어서 불러온다
    parser=추출()
    parser.feed(f.read())#feed로체크해서 전달해준다