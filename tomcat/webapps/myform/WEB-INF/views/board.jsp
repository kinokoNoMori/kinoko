<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Java - paiza</title>
    </head>
    <body>
        <% String message = (String)request.getAttribute("message");%>
        <h1><%= message %></h1>
        <form action="result" method="get" >
            <label for="article">投稿</label>
            <input type="text" name="article">
            <p></p>
            <label for="name">名前</label>
            <input type="text" name="userName">
            <button type="submit">送信する</button>
        </form>
    </body>
</html>
