#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>초미세먼지
now = time
yyyyMMddHHmmss=now.strftime('%Y %m %d %H %M %S')


dataWebLocation = "https://search.naver.com/search.naver?where=nexearch&sm=tab_etc&qvt=0&query=%EC%A0%84%EA%B5%AD%EC%B4%88%EB%AF%B8%EC%84%B8%EB%A8%BC%EC%A7%80"
dataWebLocation = unquote(dataWebLocation) #url decoding 
page = requests.get(dataWebLocation)
soup = bs(page.text, "html.parser")
copied_html_selector = '#main_pack > section.sc_new._atmospheric_environment > div > div.api_cs_wrap > div > div:nth-child(3) > div.main_box > div.detail_box'
elements = soup.select(copied_html_selector)
for index, element in enumerate(elements, 1):
    print("{} 번째 text: {}".format(index, element.text))

rr = "네이버 초미세먼지정보\n"+ element.text.replace("관측지점 현재 오전예보 오후예보","",1).replace("관측지점 현재 오전예보 오후예보","관측지점 현재 오전예보 오후예보\n").replace("지역별 초미세먼지 정보","") .strip().replace("서울","\n서울").replace("경기","\n경기").replace("인천","\n인천").replace("강원","\n강원").replace("세종","\n세종").replace("충북","\n충북").replace("충남","\n충남").replace("전남","\n전남").replace("전북","\n전북").replace("광주","\n광주").replace("제주","\n제주").replace("대전","\n대전").replace("경북","\n경북").replace("경남","\n경남").replace("대구","\n대구").replace("울산","\n울산").replace("부산","\n부산").replace("     "," ").replace("\n ","\n").replace("  "," ").replace("  "," ")
cls()
print(rr)
AI_speak(rr)


startToRecordPrintResult('tmp' + yyyyMMddHHmmss + '.txt')
rr = rr.split("\n")
REM print(rr[0])
REM print(".       ")
REM print(rr[1])
REM print(".       ")
for i in range(0,len(rr)):
    if "경기" in rr[i]:
        rr = rr[i].split(" ")
        print(rr[0]+rr[1])
        print(".       ")
    else:
        pass

endToRecordPrintResult()




file_name='tmp' + yyyyMMddHHmmss
with open(file_name + '.txt','r',encoding='utf-8') as f:
    text = f.read()

lang='ko'
gTTS_Mgr = gTTS(text=text, lang=lang )
file_name = file_name + '.mp3'
gTTS_Mgr.save(file_name)
os.startfile(file_name) 


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>지역


dataWebLocation = "https://www.google.com/search?q=%EA%B8%B0%EC%98%A8&oq=%EA%B8%B0%EC%98%A8&aqs=chrome..69i57j35i39j46i131i199i433i465i512j0i131i433i512l3j46i199i465i512j69i61.1706j1j7&sourceid=chrome&ie=UTF-8"

dataWebLocation = unquote(dataWebLocation) #url decoding 
page = requests.get(dataWebLocation)



# 아놔 page.text 에     class id 가 뭔가 암호화 된것처럼 작성되어 있네...
test = unquote(page.text)



soup = bs(page.text, "html.parser")
copied_html_selector = '#wob_loc'
elements = soup.select(copied_html_selector)
for index, element in enumerate(elements, 1):
    print("{} 번째 text: {}".format(index, element.text))

rr = "구글 지역정보\n"+ elements.text
cls()
print(rr)
AI_speak(rr)
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>기온


dataWebLocation = "https://www.google.com/search?q=%EA%B8%B0%EC%98%A8&oq=%EA%B8%B0%EC%98%A8&aqs=chrome..69i57j35i39j46i131i199i433i465i512j0i131i433i512l3j46i199i465i512j69i61.1706j1j7&sourceid=chrome&ie=UTF-8"
dataWebLocation = unquote(dataWebLocation) #url decoding 
page = requests.get(dataWebLocation)
soup = bs(page.text, "html.parser")
copied_html_selector = '#wob_tm'
elements = soup.select(copied_html_selector)
for index, element in enumerate(elements, 1):
    print("{} 번째 text: {}".format(index, element.text))

rr = "구글 기온정보\n"+ element.text+nbsp+"degree celcious" 
cls()
print(rr)
AI_speak(rr)

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>습도


dataWebLocation = "https://www.google.com/search?q=%EA%B8%B0%EC%98%A8&oq=%EA%B8%B0%EC%98%A8&aqs=chrome..69i57j35i39j46i131i199i433i465i512j0i131i433i512l3j46i199i465i512j69i61.1706j1j7&sourceid=chrome&ie=UTF-8"
dataWebLocation = unquote(dataWebLocation) #url decoding 
page = requests.get(dataWebLocation)
soup = bs(page.text, "html.parser")
copied_html_selector = '#wob_hm'
elements = soup.select(copied_html_selector)
for index, element in enumerate(elements, 1):
    print("{} 번째 text: {}".format(index, element.text))

rr = "구글 습도정보\n"+ element.text
cls()
print(rr)
AI_speak(rr)


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>바람


dataWebLocation = "https://www.google.com/search?q=%EA%B8%B0%EC%98%A8&oq=%EA%B8%B0%EC%98%A8&aqs=chrome..69i57j35i39j46i131i199i433i465i512j0i131i433i512l3j46i199i465i512j69i61.1706j1j7&sourceid=chrome&ie=UTF-8"

dataWebLocation = unquote(dataWebLocation) #url decoding 
page = requests.get(dataWebLocation)
soup = bs(page.text, "html.parser")
copied_html_selector = '#wob_ws'
elements = soup.select(copied_html_selector)
for index, element in enumerate(elements, 1):
    print("{} 번째 text: {}".format(index, element.text))

rr = "구글 바람정보\n"+ element.text 
cls()
print(rr)
AI_speak(rr)


echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>cmd 명령어 사용이력 텍스트로 저장
doskey /history > doskey_history.txt