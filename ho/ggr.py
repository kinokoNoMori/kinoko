import sys, webbrowser #, bs4 , requests,
from time import sleep 
import os

# URLの指定
google_home = "https://www.google.co.jp/"
ch_url = "https://hebi.5ch.net/test/read.cgi/news4vip/1574139940/l50"
ch2_url = "https://kinoko-1.paiza-user.cloud:8080/mywork/pazudoraform"
url3 = "http://mysys-check.com/"

#


print("Now Loading ・・・")
webbrowser.open(url3,new=0, autoraise=False)
#sleep(3)#60=1分


#XPath
'''
コメント内容
/html/body/div[1]/div[13]/div[2]/form/p/textarea
書き込む牡丹
/html/body/div[1]/div[13]/div[2]/form/p/input[6]
'''