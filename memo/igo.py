#----------------------------------------------------------------------
#グローバル
#先後攻の色ｂ先攻
colors = ["ｗ","ｂ"]
#ベクトル
vx = [0,1,1, 1, 0,-1,-1,-1]
vy = [1,1,0,-1,-1,-1, 0, 1]
v = [vx,vy]
#囲い
waku = "＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝"
#得点
count_b = 0
count_w = 0


#----------------------------------------------------------------------
#メインメソッド
def main():
    space = "囗"

    square =  [[space for i in range(9)] for j in range(9)]
    #空かどうか真で空
    empty = [[True for i in range(9)] for j in range(9)]
    #初期黒
    square[5][4] = "ｂ"
    square[4][5] = "ｂ"
    #初期白
    square[4][4] = "ｗ"
    square[5][5] = "ｗ"

    #升目の数値
    wake = space
    square[0][0] = "ー"
    #マスのメモリ
    memori = ["０","１","２","３","４","５","６","７","８"]
    for i in range(1,9):
        square[0][i] = memori[i]
        square[i][0] = memori[i] 

    
    #まず初期状態を出力
    print("初期盤面を出力します")
    print(waku)
    display(square)

    #Trueの間ゲーム続行
    gameLoop = True

    #ターン数の変数
    turn = 1

    startCall()
    
    #ゲームの本筋ループ
    while gameLoop:
        #正しく入力されたらinput_loopがFalseになり置き換え処理へ
        input_loop=True
        while input_loop:
            turn_color = colors[turn%2]
            non_turn_color = colors[1-turn%2]
            
            print("{0}ターン目,{1}のターンです。".format(turn,turn_color))
            print("「座標x(横) (半角スペース)座標y(縦)」の順で入力してください")

            
            #置く位置を入力
            te = input().split()#x y
            X=int(te[0])
            Y=int(te[1])
            if X==99 and Y==99:#終了コマンド
                turn = lastTurn()
                break
            elif 1<=X and X<=8 and 1<=Y and Y<=8:
                #配置 置く位置が空白だった場合配置可能
                if square[X][Y]==space:
                    #入力ループ終了
                    input_loop = False
                    #bを配置
                    square[X][Y] = turn_color
                    #間の置き換え
                    for i in range(0,8):#8方向
                        #置き換える向き(v[i])と位置(p)ーーpointer = 現在地XY + 向きv[i]
                        px,py = p_change(i,X,vx,Y,vy)
                        #碁盤の枠内にいる間、置き換え探し
                        while 1<=px and px<=8 and 1<=py and py<=8:
                            #色同じなら間置き換え
                            if square[px][py]==turn_color:
                                #置き換えの開始地点
                                dx = X
                                dy = Y
                                #置き換え処理changeループ
                                change = True
                                while change:
                                    square[dx][dy]=turn_color#置き換え
                                    dx += vx[i]
                                    dy += vy[i]
                                    if dx==px and dy==py:
                                        change=False
                                #置き換え終わったらブレイク
                                break
                            #空白なら次の方向へ
                            elif square[px][py]==space:
                                break
                            #色違いなら次のマス
                            elif square[px][py]==non_turn_color:
                                px += vx[i]
                                py += vy[i]
                            else:
                                break
            elif X<=0 or 9<= X or Y<=0 or 9<=Y:
                print("入力が不正です")
                print("ｘとｙは１から８以内で入力してください")

            #入力が失敗した場合
            else:
                print("入力が不正です")        
                                
        #現在の盤面を出力
        display(square)
        
        #全部埋め終わった時
        if turn >= 60:
            gameLoop = False
            break
        else:
            pass
        #次のターンへ
        turn += 1

    #最終結果出力
    endCall()
    count_b,count_w = display(square)
    result(count_b,count_w,turn)

#----------------------------------------------------------------------
#px,pyを計算するメソッド
def p_change(i,X,vx,Y,vy):
    px=X+vx[i]
    py=Y+vy[i]
    return px,py
#----------------------------------------------------------------------
#表示
def display(square):
    count_b = 0
    count_w = 0
    print(waku)
    for i in range(0,9):
        print("||  ", end="")
        for j in range(0,9):
            if square[j][i]=="ｂ":
                count_b += 1
            elif square[j][i]=="ｗ":
                count_w += 1
            else:
                pass
            print("{0} ".format(square[j][i]), end="")
        print("||")
    print(waku)
    print("ｂの得点：{0}　－　ｗの得点：{1}".format(count_b,count_w))
    return count_b,count_w
#----------------------------------------------------------------------
#skip
def lastTurn():
    return 61
#----------------------------------------------------------------------
#結果出力
def result(BP,WP,turn):
    if turn >= 60:
        if BP >WP:
            winner = 1
            print("{0}の勝利です".format(colors[winner]))
        elif BP < WP:
            winner = 0
            print("{0}の勝利です".format(colors[winner]))
        else:
            print("ドローです")
#----------------------------------------------------------------------
#スタートエンドコール
def startCall():
    print("-先攻はb、後攻はwです")
    print("==============")
    print("==Game Start==")
    print("==============")
def endCall():
    print("===============")
    print("==Game Result==")
    print("===============")
#----------------------------------------------------------------------
#実行
main()
