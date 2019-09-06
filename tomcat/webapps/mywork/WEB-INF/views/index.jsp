<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello Template</title>
    </head>
    <body style="background:#ffffff">
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">Hello Template</h1>
        <strong><%= new java.util.Date() %></strong>
        
        <% String message = (String)request.getAttribute("message");%>
        <p><%= message %></p>
    </body>
</html>