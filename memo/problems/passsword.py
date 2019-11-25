import itertools

al = "abcdefghijklmnopqrstuvwxyz"
alp = list(al)

str = input()
str_list = list(str)

num = 0
for c in str_list:
    num += (alp.index(c)+1)
  
print(num)
# for i,_ in enumerate(alp,0):
serch = True

#26文字について
for i in range(len(alp)):
    #alpからr文字の組み合わせ
    #for j in itertools.permutations(alp, r=i):# 許さないhttps://docs.python.org/ja/3/library/itertools.html
    for j in itertools.product(alp, repeat=i):# 重複を許す
        sum = 0#　文字列の数値を格納
        for k in j:# jは文字列の配列、kはその一文字ずつ
            sum += (alp.index(k)+1)
            if sum>num:
                serch = False
            elif sum==num:
                if "".join(j)!=str:
                    print("".join(j))
                    break
            else:
                continue
        else:
            continue
        break
    else:
        continue
    break
else:
    print("No")
