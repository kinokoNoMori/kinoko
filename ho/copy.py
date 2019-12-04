import os
import shutil

print("judgeファイル・settingsファイル・defaultファイをコピーします")
print("コピー先の問題番号３桁")
number = input()

default1 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/problem/04_codes/04_01/default.php"
default2 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php"

print("==================")

print("defaltファイルを出力します")
print("==================")
f = open(default1)
for a in f:
    print(a)
print("==================")
print("answerファイルを出力します")
print("==================")
f = open(default2)
for a in f:
    print(a)
print("==================")
print("間違いなあいですか[y/n]")
yn = input()
if yn == "y":

    # judgeファイルコピー 040 から　numberへ
    judge1 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02000_php/testset/02_judge/judge.rb"
    judge2 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/testset/02_judge/judge.rb"
    shutil.copyfile(judge1, judge2)

    # settingsファイルコピー 040 から　numberへ
    settings1 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02000_php/testset/02_judge/settings.yml"
    settings2 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/testset/02_judge/settings.yml"
    shutil.copyfile(settings1, settings2)


    # defaultファイルコピー 同番号のデフォルとファイル から　numberのアンサーファイルへ
    #default1 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/problem/04_codes/04_01/default.php"
    #default2 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php"
    shutil.copyfile(default1, default2)

    print("==================")
    print("defaltファイルのパスを出力")
    print("tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php")
    print("＝")
else:
    pass
