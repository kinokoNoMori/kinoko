<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= request.getAttribute("name") %>トップ</title>
    </head>
    <body style="background:#ffffff">
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= request.getAttribute("name") %>
        </h1>
        個人的なもの
        <p><a href="rireki">履歴書(書？)</a></p>
        
        <p><a href="selfintroduction">自己紹介</a></p>
        <br>
        webアプリ
        <p><a href="form">１行掲示板</a></p>
        
        
        <br>
        <br>
        <p>===============================================================</p>
        <p>工事中</p>
        
        <p><a href="review">未ゲーム漫画レビュー</a></p>
        
    </body>
</html>