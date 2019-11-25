<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import ="java.util.Date,java.text.ParseException,java.text.SimpleDateFormat" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>スタミナ計算</title>
    </head>
    <body style="background:#ffffff">
        <a name="top"></a>
        
        <%= request.getAttribute("tag") %>
        
        
        <% /*String message = (String)request.getAttribute("message");*/%>
        <% String message = "スタミナ計算"; %>
        
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= message %></h1>
        
        <a name="topBoard"></a>
        
        <% SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); %>
        <% Date date = new Date(); %>
        <% Calendar calendar = Calendar.getInstance(); %>
        <% calendar.setTime(date); %>
        <% calendar.add(calendar.HOUR_OF_DAY, 9); %>
        <% Date d1 = calendar.getTime(); %>
        
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">現在時刻<%= sdf.format(d1) %></h2>
        
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">スタミナ情報</h2>
        
        <form action="pazudoraresult" method="post" >
            
            <label for="now">現在スタミナ</label><br>
            <input type="text" name="now">
            <p></p>
            
            <label for="req">欲しいスタミナ</label><p></p>
            <input type="text" name="req">
            <p></p>
            
            <label for="heal">1スタミナ回復時間(分)</label><p></p>
            <input type="text" name="heal" value=3 >
            
            <button type="submit">溜まる時間を調べる</button>
        </form>
        
        
        <br>
        <%= request.getAttribute("tag") %>
    </body>
</html>
