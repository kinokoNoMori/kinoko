<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import ="java.util.Date,java.text.ParseException,java.text.SimpleDateFormat" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= request.getAttribute("name") %></title>
    </head>
    
    <body style="background:#ffffff">
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= request.getAttribute("name") %>
        </h1>
                
        <% SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); %>
        <% Date date = new Date(); %>
        
        <% Calendar calendar = Calendar.getInstance(); %>
        <% calendar.setTime(date); %>
        
        <% calendar.add(calendar.HOUR_OF_DAY, 9); %>
        <% Date d1 = calendar.getTime(); %>
        
        <% int awa = calendar.get(Calendar.HOUR_OF_DAY); %>

        <% String hello = "hello"; %>
        
        <% if(4<=awa && awa<=10) {
            hello = "おはようございます";
        } else if(10<awa && awa<17) {
            hello = "こんにちわ";
        } else {
            hello = "こんばんわ";
        } %>
        <p><%= hello %>、私のウェブページへようこそ</p>
        
        <!--
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">個人的なもの</h3>
        <p><a href="selfintroduction">自己紹介</a></p>
        <br>
        -->
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">作成物</h3>
        <p><a href="mycreature">作成物</a></p>
        
        <br>
        <br>
        <!--
        <p>===============================================================</p>
        <p>工事中。見ないでください。</p>
        
        <p><a href="review">未ゲーム漫画感想</a></p>
        -->
    </body>
</html>