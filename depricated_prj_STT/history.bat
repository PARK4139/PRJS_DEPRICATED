
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>library 설치
pip install SpeechRecognition
pip install PyAudio
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>python 실행
py

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>jung hoon park library 
def cls():
    import os
    os.system('cls')

def cwd():
    import os
    print(os.getcwd())

def dir():
    import os
    for i in os.listdir():
        print(i)
        # print(i, end = " ")

def mkdir(path):
    import os
    os.mkdir(path)

def mkdirtree(path):
    import os
    os.mkdirs(path)

def startRecordCommand(file_address):
    import sys
    from datetime import datetime 
    # sys.stdout = open('py cmd recording.txt', 'a', encoding='utf-8')  #>>
    # sys.stdout = open('py cmd recording.txt', 'w', encoding='utf-8')    #>
    # sys.stdout = open('py cmd recording.txt', 'r', encoding='utf-8')  #explorer "py cmd recording.txt"
    sys.stdout = open(file_address, 'w', encoding='utf-8')    #>

def endRecordCommand():
    import sys
    sys.stdout.close()


def ipconfig():
    import os
    os.system('ipconfig')


# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>time s")
import time
now = time
localtime = now.localtime()
yyyy=now.localtime().tm_year
MM=now.localtime().tm_mon
dd=now.localtime().tm_mday
HH=now.localtime().tm_hour
mm=now.localtime().tm_min
ss=now.localtime().tm_sec
timestamp=now.time()
weekday=now.localtime().tm_wday
elapsedDaysFromJan01=now.localtime().tm_yday
yyyyMMddHHmmss=now.strftime('%Y %m %d %H %M %S')
customTime1=now.strftime('%Y-%m-%d %H:%M:%S')
customTime2=now.strftime('%Y-%m-%d %H:%M')
# print(yyyyMMddHHmmss)
# print(yyyy)
# print(ss)
# print(now)
# print(MM)
# print(mm)
# print(HH)
# print(dd)
# print(localtime )
# print(weekday)
# print(timestamp)
# print(elapsedDaysFromJan01)
# print(customTime1)  
# print(customTime2)  
# print(ipconfig())
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>time e")

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>dictionary s")
bnsp=' '
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>dictionary e")
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>TTS s")

        

print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>gTTS s")
from gtts import gTTS
import os
text='구글의 AI 음성인식 기술을 활용한 TTS 기능 연습입니다.한국인여성목소리는 설정할 수 없다고 합니다.'
lang='ko'
gTTS_Mgr = gTTS(text=text, lang=lang )
file_name = text+'.mp3'
gTTS_Mgr.save(file_name)
os.startfile(file_name) 
print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>gTTS e")



print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>gTTS style2 s")
import time
now = time
yyyyMMddHHmmss=now.strftime('%Y %m %d %H %M %S')
# print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>cmd recording s")
startRecordCommand('tmp' + yyyyMMddHHmmss + '.txt')    
print(yyyyMMddHHmmss)
print("이것은 TTS 기능의 초석이 될 테스트 샘플입니다.")
print("이것은 파이썬 베이스로 구글의 gTTS 를 활용한 TTS 입니다.")
print("구글의 AI 음성인식 기술을 활용한 TTS 기능 연습입니다.")
print("한국인여성목소리는 설정할 수 없다고 합니다.")
endRecordCommand()
# print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>cmd recording e")

from gtts import gTTS
import os
file_name='tmp' + yyyyMMddHHmmss
with open(file_name + '.txt','r',encoding='utf-8') as f:
    text = f.read()

lang='ko'
gTTS_Mgr = gTTS(text=text, lang=lang )
file_name = file_name + '.mp3'
gTTS_Mgr.save(file_name)
os.startfile(file_name) 
print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>gTTS style2 e")