<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello Template</title>
    </head>
    <body>
        <h1>Hello Template</h1>
        <strong><%= new java.util.Date() %></strong>
        
        <% String message = (String)request.getAttribute("message");%>
        <p><%= message %></p>
    </body>
</html>