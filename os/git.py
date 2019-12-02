import os, time

# tomcat起動
def git_pull_commit():
    #
    print("コミットメッセージを入力してください")
    mess = input()
    #
    os.chdir("/home/ubuntu/kinoko")
    time.sleep(1)
    #
    print("pullします。")
    os.system("git pull")#pullもできる
    time.sleep(5)
    #
    print("addします。")
    os.system("git add .")#addもできる
    time.sleep(5)
    #
    print("commitします。メッセージは「"+ mess +"」です")
    os.system("git commit -m \""+ mess + "\"")#commitもできる
    #
    print("KNM-A！")
    os.system("git push")#pushもできる#入力まではできない
    
        

#メインメソッド
def main():
    git_pull_commit()
    




# ==============

#実行
main()
#os.chdir("/home/ubuntu/kinoko/os")
#os.system("python3 tom_boot.py")これでpython3ファイルが実行できるな

# ==============
#参考 https://teratail.com/questions/183558

#現在地の出力 print(os.getcwd())

'''
    #
    os.system("git push")#pushもできる#入力まではできない
    os.system("KinokoNoMori/n")
    os.system("714578hyznhA/n")
'''
    