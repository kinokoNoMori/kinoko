import os
import shutil

print("judgeファイル・settingsファイル・defaultファイをコピーします")
print("コピー先の問題番号３桁")
number = input()

'''
default1 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/problem/04_codes/04_01/default.php"
default2 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php"
'''
default1 = "tmp_problems/cgc_02"+ number +"_php/problem/04_codes/04_01/default.php"
default2 = "tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php"


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
print("間違いないですか => y / n")
yn = input()
if yn == "y":

    # judgeファイルコピー 040 から　numberへ
    '''
    judge1 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02000_php/testset/02_judge/judge.rb"
    judge2 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/testset/02_judge/judge.rb"
    '''
    judge1 = "tmp_problems/cgc_02000_php/testset/02_judge/judge.rb"
    judge2 = "tmp_problems/cgc_02"+ number +"_php/testset/02_judge/judge.rb"
    shutil.copyfile(judge1, judge2)

    # settingsファイルコピー 040 から　numberへ
    '''
    settings1 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02000_php/testset/02_judge/settings.yml"
    settings2 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/testset/02_judge/settings.yml"
    '''
    settings1 = "tmp_problems/cgc_02000_php/testset/02_judge/settings.yml"
    settings2 = "tmp_problems/cgc_02"+ number +"_php/testset/02_judge/settings.yml"
    shutil.copyfile(settings1, settings2)


    # defaultファイルコピー 同番号のデフォルとファイル から　numberのアンサーファイルへ
    #default1 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/problem/04_codes/04_01/default.php"
    #default2 = "/Users/hirai/cgc_problem/tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php"
    shutil.copyfile(default1, default2)

    print("==================")
    print("answerファイルのパスを出力")
    print("tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php")
    print("answerファイルを開きます。")
    os.system("vi tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php")

    print("修正後のファイルを出力します")
    print("==================")
    f = open("tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php")
    for a in f:
        print(a)
    print("==================")

    yn2 = "n"
    while yn2 == "n":
        print("間違い無いですか？ => y / n")
        yn2 = input()
        if yn2 == "y":
            break
        else:
            os.system("vi tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php")
            print("修正後のファイルを出力します")
            print("==================")
            f = open("tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php")
            for a in f:
                print(a)
            print("==================")

    print("rime形式のファイルを書き出します")
    os.system("./save_rime.sh tmp_problems/cgc_02"+ number +"_php")

    print("=")

    print("実行テストのためにディレクトリを移動します。")
    os.chdir("rime_problems")

    print("=")

    print("実行テストをします。")
    os.system("./rime.py test cgc_02"+ number +"_php")

    print("=")
    #os.chdir("/Users/hirai/cgc_problem")
    os.chdir("../")

    print("テストはうまくいきましたか?　=> y / n")
    yn3 = input()
    if yn3 == "y":

        print("=")

        print("セーブします。")
        os.system("./save_prob.sh cgc_problem_php.seed.rb")
    else:
        print("==================")
        print("解答と出力例を確かめてください")
        print("=")
        print("解答ファイルのパスを出力")
        print("tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php")

        print("=")

        print("解答ファイルを出力します")
        print("==================")
        f = open("tmp_problems/cgc_02"+ number +"_php/testset/02_judge/answer.php")
        for a in f:
            print(a)
        print("==================")

        print("入力例ファイルのパスを出力")
        print("tmp_problems/cgc_02"+number+"_php/testset/01_test_cases/001/out.txt")
        print("出力例ファイル")
        print("==================")
        f2 = open("tmp_problems/cgc_02"+number+"_php/testset/01_test_cases/001/out.txt")
        for a in f2:
            print(a)
        print("==================")
else:
    pass
