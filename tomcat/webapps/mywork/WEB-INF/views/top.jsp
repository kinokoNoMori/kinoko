<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= request.getAttribute("name") %>トップ</title>
    </head>
    <body>
        <h1><%= request.getAttribute("name") %></h1>
        
        <p><a href="selfintroduction">自己紹介</a></p>
        
        <p><a href="review">ゲーム漫画レビュー</a></p>
        
        
        
        <br>
        <br>
        <p>===============================================================</p>
        <p><a href="menu">test</a></p>
        <p><a href="html">HTMLの表記　一覧</a></p>
        
    </body>
</html>