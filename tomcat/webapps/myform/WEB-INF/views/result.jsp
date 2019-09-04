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
        <% String article = (String)request.getAttribute("article"); %>
        <% String userName = (String)request.getAttribute("userName"); %>
        <p>投稿:<%= article %>, 名前:<%= userName %></p>
        <p><a href="form">戻る</a></p>
        </form>
    </body>
</html>
