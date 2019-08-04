<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RPGの行動選択メニュー</title>
    </head>
    <body>
        <h1><%= request.getAttribute("name") %>のアクション</h1>
        <p><%= request.getAttribute("message") %></p>
        <p><a href="menu">メニューに戻る</a></p>
    </body>
</html>