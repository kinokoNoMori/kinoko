<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import ="java.util.Date,java.text.ParseException,java.text.SimpleDateFormat" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>memo</title>
    </head>
    <body style="background:#ffffff">
        <a name="top"></a>
        
        <%= request.getAttribute("tag") %>
        
        
        <% String message = (String)request.getAttribute("message");%>
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= message %></h1>
        <a name="topBoard"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">書き込み欄</h2>
        <form action="memoresult" method="post" >
            <label for="name">月</label>
            <input type="text" name="month">
            <p></p>
            <label for="name">日</label>
            <input type="text" name="day">
            <p></p>
            <label for="name">時間</label>
            <input type="text" name="time">
            <p></p>
            <label for="article">内容</label>
            <input type="text" name="article">
            <button type="submit">書き込む</button>
        </form>
        
        <p></p>
        <% SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); %>
        <% Date date = new Date(); %>
        <% Calendar calendar = Calendar.getInstance(); %>
        <% calendar.setTime(date); %>
        <% calendar.add(calendar.HOUR_OF_DAY, 9); %>
        <% Date d1 = calendar.getTime(); %>
        
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">メモ　＞現在時刻<%= sdf.format(d1) %></h2>
        <table border=5; bordercolor="#e6e6fa">
            <tr><th>日付</th><th>内容</th></tr>
            
            <% String articles = request.getAttribute("articles").toString(); %>
            <% String[] lines = articles.split("\n", 0); %>
            <% java.util.Arrays.sort(lines); %>
        
            <% for (String line: lines) { %>
                <tr>
                    <% String[] contents = line.split(","); %>
                    <% for (String content: contents) { %>
                        <td><%= content %>
                        </td>
                    <% } %>
                </tr>
            <% } %>
        </table>
        
        
        <a href="#topBoard">~メモの最上段へ</a><br>
        
        <br>
        <%= request.getAttribute("tag") %>
    </body>
</html>
