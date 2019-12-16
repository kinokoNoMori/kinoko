#文字列操作参考　https://note.nkmk.me/python-str-search/

import os
import shutil

#ファイルの読み書きの練習
print("講座名を入力 => ex)[fe-strategy-02]")
kouza = "fe-strategy-02"############################################################################################
#kouza = input()
print("総chap数を入力してください")
chap = 10############################################################################################
#chap = input()

#path の生成
if chap <= 9:
    chap = "0" + str(chap)
else:
    chap = str(chap)
readme_path = "contents/" + kouza + "/chap"+ chap + "/README.md"
tips_path = "contents/" + kouza + "/chap"+ chap + "/TIPS.md"

##################################
#「講座の」READMEのタイトルと内容採る
README_title = ""
README_content = ""
README_path = "contents/" + kouza + "/README.md"
f = open(README_path)
for a in f:
    if "#" in a:
        README_title = a.replace("# ","")
    else:
        README_content += a
#print(README_title)
#print(README_content)
#取れた

#sql文生成

#worksテーブルのインサート文生成
print("worksテーブルの「id」を入力してくださあい")
works_id = "148"############################################################################################
#works_id = input()
print("worksテーブルの「uid」を入力して下さい　＝＞　講座タイトル => ネーミングは過去作に従う[ex)ストラテジ編講座１ => beginner-strategy1]")
works_uid = "fe-strategy-02"############################################################################################
#works_uid = input()
print("worksテーブルの「work_group_id」 => 講座種類ごとに同じ、過去作に従う => [ex) python入門=>3 , Flask=>38]")
work_group_id = "48"############################################################################################
#work_group_id = input()
print("vimeoのchap1の番号　=>（URLのあれ）")
vimeo_num1 = "123456789"############################################################################################
#vimeo_num1 = input()
#出力
works_insert = "INSERT INTO`works` \
(id, uid, work_group_id, title, description, title_movie_id, position, created_at, updated_at, state_id )\
VALUES (\'" + \
works_id + "\',\'" + \
works_uid + "\',\'" + \
work_group_id + "\',\'" + \
README_title + "\',\'" + \
README_content + "\',\'" + \
vimeo_num1 + "\',\'1\',NOW(),NOW(),\'1\') ;"
print("/*====works_insert文生成====*/")
print(works_insert)
print("/*====完了====*/")
#
############################

'''ここはwhileの中に
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
'''


##########################################

print("/*============================*/")
#work_problems生成
#chap文ループ
print("/*chap1のwork_problems_idを入力してください => `work_problems`の空いてるとこ*/")
work_problems_id = "24001" #####################################################################
#work_problems_id = input()
print("/*language_id => https://github.com/gi-no/learning/wiki/language_id*/")
language_id = "23"#####################################################################
#language_id = input()

#ヴぃめお
vimeo_nums = [0]*int(chap)
vimeo_playtime = [0]*int(chap)
'''
for i in range(int(chap)):    
    print("chap"+ chap +"のvimeoの番号を入力してください")
    vimeo_nums[i] = input()
    print("chap"+ chap +"のvimeoのプレイタイムを入力してください => ex5分6秒) => 05:06")
    vimeo_playtime[i] = input()
'''
vimeo_nums = ["1","2","3","4","5","6","7","8","9","10"]##########################################################################
vimeo_playtime = ["1","2","3","4","5","6","7","8","9","10"]##########################################################################

cur_chap = 1
chap = int(chap)
while cur_chap <= chap:
    print("/*====insert_work_problems生成====*/")
    #「各chapの」READMEのタイトルと内容採る
    chapREADME_title = ""
    chapREADME_content = ""
    #path の生成
    if cur_chap <= 9:
        cur_chap = "0" + str(cur_chap)
    else:
        cur_chap = str(cur_chap)
    chapREADME_path = "contents/" + kouza + "/chap"+ str(cur_chap) + "/README.md"
    f = open(chapREADME_path)
    for a in f:
        if "## " in a:
            break
        elif "# " in a:
            chapREADME_title = a.replace("# ","")
        else:
            chapREADME_content += a
    #print(chapREADME_title)
    #print(chapREADME_content)
    #
    print("layout_typeを入力してください => [layout_type => 0: 動画 + paiza io, 1: 動画のみ, 10: paiza cloud]")
    layout_type_num = "0"###########################################################################
    #layout_type_num = input()

    work_problems_insert = "INSERT INTO `work_problems`\
    (id, uid, no, work_uid, title, description, layout_type, \
    not_login_content, free_content, created_at, updated_at, state_id)\
    VALUES(\'"+\
    str(work_problems_id)+"\',\'"+\
    str(work_problems_id)+"\',\'"+\
    str(cur_chap)+"\',\'"+\
    str(works_uid)+"\',\'"+\
    chapREADME_title+"\',\'"+\
    chapREADME_content+"\',\'"+\
    str(layout_type_num)+"\',\'0\',\'0\',NOW(),NOW(),\'1\');"
    
    print("/*====chap"+str(cur_chap)+"のinsert_work_problems生成====*/")
    print(work_problems_insert)
    print("/*====完了====*/")
    
    #次のチャプへ
    work_problems_id = 1 + int(work_problems_id)
    cur_chap = 1 + int(cur_chap)
    
    
    ########=====================================================================-
    print("/*insert_work_problem_languages生成*/")
    
    # tips数を把握したい
    tips_number = 0
    f = open(tips_path)
    for a in f:
        tips_number += a.count("##")
    #Tips 把握できた
    
    
    
    #Tipsのタイトルを取りたいなあ
    tips_titles = ["NULL"]*9
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
#   tips_contents = [""]*tips_number
    tips_contents = ["NULL"]*9
    tips_point = -1#上の配列のindex　　頭の#と##を無視したいから―1から
    tips_content = ""
    f = open(tips_path)
    for a in f:
        if "##" in a:
            tips_point += 1
        elif "#" in a:
            pass
        else:
            tips_contents[tips_point] += a
    '''
    for i in range(tips_number):
        print("=="+tips_titles[i]+"==")
        print(tips_contents[i])
    '''
    #配列にtipsのタイトルと内容入れ込めた
    
    #########
    '''
    なう：insert_work_problemsできた
    
    うぃる：work_problem_languages作る
    '''
    
    #/* work_problem_languages*/
    insert_work_problem_languages = "INSERT INTO `work_problem_languages`\
      (\
      id,\
      work_problem_uid,\
      language_id,\
      movie_id,\
      /*movie_file,--?\
      movie_file_expire_at,--?*/\
      play_time,\
      tips_title_1,\
      tips_title_2,\
      tips_title_3,\
      tips_title_4,\
      tips_title_5,\
      tips_title_6,\
      tips_title_7,\
      tips_title_8,\
      tips_title_9,\
      tips_content_1,\
      tips_content_2,\
      tips_content_3,\
      tips_content_4,\
      tips_content_5,\
      tips_content_6,\
      tips_content_7,\
      tips_content_8,\
      tips_content_9,\
      created_at,\
      updated_at\
    )\
      VALUES (\
      '"+ str(work_problems_id) +"',/*id => work_problems`のidと同じ*/\
      '"+ str(work_problems_id) +"',/*work_problem_uid　=> work_problems`のidと同じ*/\
      '"+ language_id +"',/*language_id => https://github.com/gi-no/learning/wiki/language_id*/\
      '"+ vimeo_nums[cur_chap] +"',/*movie_id vimeoのあれ*/\
      '"+ vimeo_playtime[cur_chap] +"',/*play_time 動画時間*/\
      '"+ chapREADME_title +"',/*tips_title_1  READMの#のタイトル　 <= Tipsではないことに注意*/\
      '"+ tips_titles[0] +"',/*tips_title_2 chapのTipsのタイトル　数に合わせて増減*/\
      '"+ tips_titles[1] +"',/*tips_title_3*/\
      '"+ tips_titles[2] +"',/*tips_title_4*/\
      '"+ tips_titles[3] +"',/*tips_title_5*/\
      '"+ tips_titles[4] +"',/*tips_title_6*/\
      '"+ tips_titles[5] +"',/*tips_title_7*/\
      '"+ tips_titles[6] +"',/*tips_title_8*/\
      '"+ tips_titles[7] +"',/*tips_title_9*/\
      '"+ chapREADME_content +"',/*tips_content_1 READMの#の記述 <= Tipsではないことに注意*/\
      '"+ tips_contents[0] +"',/*tips_content_2 chapのTipsの内容　数に合わせて増減*/\
      '"+ tips_contents[1] +"',/*tips_content_3*/\
      '"+ tips_contents[2] +"',/*tips_content_4*/\
      '"+ tips_contents[3] +"',/*tips_content_5*/\
      '"+ tips_contents[4] +"',/*tips_content_6*/\
      '"+ tips_contents[5] +"',/*tips_content_7*/\
      '"+ tips_contents[6] +"',/*tips_content_8*/\
      '"+ tips_contents[7] +"',/*tips_content_9*/\
      NOW(),\
      NOW()\
      );"
    
    #
    print("====" + str(cur_chap) + "のinsert_work_problem_languagesを出力します====")
    print(insert_work_problem_languages)
    print("====完了====")

    #次のチャプへ
    work_problems_id = 1 + int(work_problems_id)
    cur_chap = 1 + int(cur_chap)














#