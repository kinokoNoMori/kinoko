import os, time

# tomcat起動
def git_pull():
    print("コミットメッセージを入力してください")
    mess = input()
    #
    print("ホームディレクトリを移動します。")
    os.chdir("/home/ubuntu/kinoko")
    time.sleep(1)
    #
    print("pullします。")
    os.system("git pull")#pullもできる
    time.sleep(3)
    #
    print("addします。")
    os.system("git add .")#addもできる
    time.sleep(3)
    #
    os.system("git commit -m \""+ mess + "\"")#commitもできる
    time.sleep(10)
    #
    os.system("git push")#pushもできる
    os.system("KinokoNoMori")
    print("KinokoNoMori")
    print("714578hyznhA")
    
#メインメソッド
def main():
    git_pull()





# ==============

#実行
main()
#os.chdir("/home/ubuntu/kinoko/os")
#os.system("python3 tom_boot.py")これでpython3ファイルが実行できるな

# ==============
#参考 https://teratail.com/questions/183558

#現在地の出力 print(os.getcwd())