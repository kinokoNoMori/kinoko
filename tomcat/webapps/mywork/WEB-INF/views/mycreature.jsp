<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>作品</title>
    </head>
    
    <body style="background:#ffffff">
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップ</a><a>＞</a><a>作成物</a>
        <a name="top"></a>
        <br>
        <a href="#board">~掲示板</a>
        <a href="#memo">~メモ</a>
        <a href="#cal">~電卓</a>
        <a href="#igo_python">~囲碁のPythonコード</a>
        <a href="#stamina">~スタミナ計算</a>
        <a href="#kanso">~まとめ</a>
        
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        作成物</h1>
        
        <a name="board"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">掲示板</h2>
        <p><a href="form">掲示板</a></p>
        <h3>・製作のきっかけ</h3>
        <p><%= request.getAttribute("kikkake_board") %></p>
        <h3>・気をつけたところ</h3>
        <p><%= request.getAttribute("kodawari_board") %></p>
        
        <a name="memo"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">メモ</h2>
        <p><a href="memoform">メモ</a></p>
        <h3>・製作のきっかけ</h3>
        <p><%= request.getAttribute("kikkake_memo") %></p>
        <h3>・気をつけたところ</h3>
        <p><%= request.getAttribute("kodawari_memo") %></p>
        
        <a name="cal"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">電卓</h2>
        <p><a href="calcuratorform">電卓</a></p>
        <h3>・製作のきっかけ</h3>
        <p><%= request.getAttribute("kikkake_cal") %></p>
        <h3>・気をつけたところ</h3>
        <p><%= request.getAttribute("kodawari_cal") %></p>
        
        
        <a name="igo_python"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">囲碁のPythonコード</h2>
        <p><a href="igopyCode">コード</a></p>
        <h3>・製作のきっかけ</h3>
        <p><%= request.getAttribute("kikkake_igo") %></p>
        <h3>・気をつけたところ</h3>
        <p><%= request.getAttribute("kodawari_igo") %></p>
        
        <a name="stamina"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">パズドラのスタミナ計算</h2>
        <p><a href="pazudoraform">どん</a></p>
        <h3>・製作のきっかけ</h3>
        <p><%= request.getAttribute("kikkake_stamina") %></p>
        <h3>・気をつけたところ</h3>
        <p><%= request.getAttribute("kodawari_stamina") %></p>
        
        <br>
        <br>
        <a name="kanso"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">まとめ</h2>
        <p><%= request.getAttribute("matome") %></p>
        <br>

        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップ</a><a>＞</a><a>作成物</a>
        <a name="top"></a>
        <br>
        <a href="#board">~掲示板</a>
        <a href="#memo">~メモ</a>
        <a href="#cal">~電卓</a>
        <a href="#igo_python">~囲碁のPythonコード</a>
        <a href="#kanso">~まとめ</a>
        
    </body>
</html>

