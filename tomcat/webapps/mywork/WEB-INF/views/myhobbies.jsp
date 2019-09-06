<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>趣味</title>
    </head>
    <body style="background:#ffffff">
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="selfintroduction">自己紹介トップに戻る</a>
        <a href="top">総合トップに戻る</a><br>
        <a href="#soccer">~サッカー</a>
        <a href="#ge-mu">~ゲーム</a>
        <a href="#com">~漫画</a>
        <br>
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        趣味</h1>
        
        <a name="soccer"></a>
        <h3>サッカー：</h3>
        <p><%= request.getAttribute("soccer") %></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="ge-mu"></a>
        <h3>ゲーム：</h3>
        <p><%= request.getAttribute("game") %></p>
        <a href="review">wip感想</a></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="manga"></a>
        <h3>漫画：</h3>
        <p><%= request.getAttribute("com") %></p>
        <a href="review">wip感想</a></p>
        <a href="#top">~このページの最上部</a>
        
        <br>
        <p><a href="selfintroduction">自己紹介トップに戻る</a></p>
        <p><a href="top">総合トップに戻る</a></p>
    </body>
</html>