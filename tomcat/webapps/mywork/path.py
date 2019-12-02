import os

##パスを表示する

#osディレクトリまでのパス
path_os = "/home/ubuntu/kinoko/os"

#tomcat起動
path0 = path_os + "tom_boot.py"
print("0 : tomcatの起動 => "+ path0)

#git pull~push
path1 = path_os + "git.py"
print("1 : pull~push => " + path1)


print("実行したいコマンドの番号を選択してください。")
select = int(input())


if select == 0:#tomcat起動
    os.chdir("/home/ubuntu/kinoko/os")
    os.system("python3 tom_boot.py")
elif select == 1:#git 
    os.chdir("/home/ubuntu/kinoko/os")
    os.system("python3 git.py")
else:
    pass


# os.chdir("/home/ubuntu/kinoko")