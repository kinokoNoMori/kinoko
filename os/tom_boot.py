import os, time

# tomcat起動
def tom_boot():
    print("tomcatを起動するためにディレクトリを移動します。")
    os.chdir("/home/ubuntu/kinoko")
    time.sleep(1)
    print("tomcatを起動します。")
    os.system("tomcat/bin/startup.sh")

#メインメソッド
def main():
    tom_boot()





# ==============

#実行
main()


# ==============
#参考 https://teratail.com/questions/183558

#現在地の出力 print(os.getcwd())