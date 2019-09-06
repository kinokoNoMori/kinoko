<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= request.getAttribute("name") %>のレビュー</title>
    </head>
    <body style="background:#ffffff">
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= request.getAttribute("name") %>のレビュー</h1>
        <p><%= request.getAttribute("message") %></p>
        
        <br>
        <p><a href="review">レビュー一覧に戻る</a></p>
        <p><a href="top">総合トップに戻る</a></p>
    </body>
</html>