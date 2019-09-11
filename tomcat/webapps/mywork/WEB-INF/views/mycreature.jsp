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
        <a href="#igo_python">~囲碁のPythonコード</a>
        
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        作成物</h1>
        
        <a name="board"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">掲示板</h2>
        <p><a href="form">掲示板</a></p>
        <h3>・製作のきっかけ</h3>
        <p><%= request.getAttribute("kikkake_board") %></p>
        <h3>・気をつけたところ</h3>
        <p><%= request.getAttribute("kodawari_board") %></p>
        
        <a name="igo_python"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">囲碁のPythonコード</h2>
        <p><a href="igopyCode">コード</a></p>
        <h3>・製作のきっかけ</h3>
        <p><%= request.getAttribute("kikkake_igo") %></p>
        <h3>・気をつけたところ</h3>
        <p><%= request.getAttribute("kodawari_igo") %></p>
        <br>
        
        
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/"><a href="top">総合トップ</a></p>
    
    </body>
</html>

