<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import ="java.util.Date,java.text.ParseException,java.text.SimpleDateFormat" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>スタミナ計算結果</title>
    </head>
    <body style="background:#fffaf4" >
    
    <!-- style="background:#ffffff" -->

        <% SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); %>
        <% Date date = new Date(); %>
        <% Calendar calendar = Calendar.getInstance(); %>
        <% calendar.setTime(date); %>
        <% calendar.add(calendar.HOUR_OF_DAY, 9); %>
        <% Date d1 = calendar.getTime(); %>
        
        
        
        <% 
        String Now = (String)request.getAttribute("now");
        int now = Integer.parseInt(Now);
        
        String Req = (String)request.getAttribute("req");
        int req = Integer.parseInt(Req);
        
        String Heal = (String)request.getAttribute("heal");
        int heal = Integer.parseInt(Heal);
        
        int time = (req-now)*heal;
        %>
        
        <% calendar.add(calendar.MINUTE, time); %>
        <% Date d2 = calendar.getTime(); %>
        
        <h1>スタミナ計算結果</h1>
        
        <p>今のスタミナ:<%= now %></p>
        <p>欲しい量:<%= req %>
        
        <p>現在時刻</p>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);"><%= sdf.format(d1) %></h2>
        
        <h2>貯まる時間</h2>
        <h1 style ="background: linear-gradient(transparent 70%, #a7a6ff 70%);"><%= sdf.format(d2) %></h1>
        
        <a href="pazudoraform">戻る</a></p>
        
        </form>
    </body>
</html>
