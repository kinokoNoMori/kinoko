import os, time

# tomcat起動
def git_pull(mess):
    print("ホームディレクトリを移動します。")
    os.chdir("/home/ubuntu/kinoko")
    time.sleep(1)
    print("pullします。")
    os.system("git pull")#pullもできる
    time.sleep(3)
    os.system("git add .")#pullもできる
    time.sleep(3)
    os.system("git commit -m \""+ mess + "\"")#pullもできる
    time.sleep(10)
    os.system("git push")#pullもできる
    print("KinokoNoMori")
    print("714578hyznhA")
    
#メインメソッド
def main():
    git_pull("commit test")





# ==============

#実行
main()
#os.chdir("/home/ubuntu/kinoko/os")
#os.system("python3 tom_boot.py")これでpython3ファイルが実行できるな

# ==============
#参考 https://teratail.com/questions/183558

#現在地の出力 print(os.getcwd())