from selenium import webdriver # installしたseleniumからwebdriverを呼び出せるようにする
from selenium.webdriver.common.keys import Keys # webdriverからスクレイピングで使用するキーを使えるようにする。
import time # 今回は、プログラムをsleepするために使用

webdriver = webdriver.Chrome()
# webdriver.get("https://kinoko-1.paiza-user.cloud:8080/mywork/pazudoraform")

#今のスタミナ
# /html/body/form/input[1]
#欲しいスタミナ
# /html/body/form/input[2]
#調べるぼたん
# /html/body/form/button

#open
webbrowser.open(ch2_url,new=0, autoraise=False)

webdriver.find_element_by_xpath("/html/body/form/input[1]").send_keys("11")
webdriver.find_element_by_xpath("/html/body/form/input[2]").send_keys("50")

webdriver.find_element_by_css_selector("/html/body/form/button").click()