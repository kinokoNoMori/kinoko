<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>自己紹介</title>
    </head>
    <body>
        <h1>私について</h1>
        
        <p>名前    ：<%= request.getAttribute("name") %></p>
        <p>年齢    ：<%= request.getAttribute("age") %></p>
        <p>生年月日：<%= request.getAttribute("birthday") %></p>
        
        <br>
        <p><a href="selfintroduction">自己紹介トップに戻る</a></p>
        <p><a href="top">総合トップに戻る</a></p>
    </body>
</html>