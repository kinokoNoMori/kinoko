#文字列操作参考　https://note.nkmk.me/python-str-search/

import os
import shutil

#ファイルの読み書きの練習
kouza = "fe-strategy-02"
chap = 10

#chap10について
if chap <= 9:
    chap = "1" + str(chap)
else:
    chap = str(chap)
readme_path = "contents/" + kouza + "/chap"+ chap + "/README.md"
tips_path = "contents/" + kouza + "/chap"+ chap + "/TIPS.md"

# tips数を把握したい
tips_number = 0
f = open(tips_path)
for a in f:
    tips_number += a.count("##")
#Tips 把握できた



#Tipsのタイトルを取りたいなあ
tips_titles = ["空"]*tips_number
tips_point = 0#上の配列のindex
tips_title = ""
f = open(tips_path)
for a in f:
    if "##" in a:
        tips_title = a.replace("## ","")
        tips_titles[tips_point] = tips_title
        tips_point += 1
# tipsのタイトル取得完了



#tipsの内容を取得
tips_contents = [""]*tips_number
tips_point = -1#上の配列のindex
tips_content = ""
f = open(tips_path)
for a in f:
    if "##" in a:
        tips_point += 1
    elif "#" in a:
        pass
    else:
        tips_contents[tips_point] += a

for i in range(tips_number):
    print("=="+tips_titles[i]+"==")
    print(tips_contents[i])
#配列にtipsのタイトルと内容入れ込めた    



##chap10について終わり
