<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>私について</title>
    </head>
    <body style="background:#ffffff">
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップ</a><a>＞</a>
        <a href="selfintroduction">自己紹介トップ</a><a>＞</a>
        <a>私について</a>
        <br>
        <a href="#syumi">~趣味</a>
        <a href="#tyo">~長所</a>
        <a href="#tan">~短所</a>
        <a href="#gakugan">~学生時代に頑張ったこと</a>
        <a href="#yarisigo">~やりたい仕事の系統</a>
        <a href="#mirai">~将来の展望</a>
        <p>------------------------------------------------------</p>
        <a name="top"></a>
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        私について</h1>
        
        <a name="syumi"></a>
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">趣味</h3>
        <p><a href="myhobbies">趣味</a></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="gakugan"></a>
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">学生時代に頑張ったこと：</h3>
        <p><%= request.getAttribute("gakuseizidaiganbattakoto") %></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="tyo"></a>
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">長所：</h3>
        <p><%= request.getAttribute("pros") %></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="tan"></a>
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">短所：</h3>
        <p><%= request.getAttribute("cons") %></p>
        <a href="#top">~このページの最上部</a>
        
        <br>
        <a name="yarisigo"></a>
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">やりたい仕事の系統</h3>
        <p><%= request.getAttribute("service") %></p>
        <!--- <p><%= request.getAttribute("security") %></p> -->
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="mirai"></a>
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">将来の展望：</h3>
        <p><%= request.getAttribute("future") %></p>
        <a href="#top">~このページの最上部</a>
        
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップ</a><a>＞</a>
        <a href="selfintroduction">自己紹介トップ</a><a>＞</a>
        <a>私について</a></p>
    </body>
</html>