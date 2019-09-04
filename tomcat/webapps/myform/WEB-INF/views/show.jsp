<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Java - paiza</title>
    </head>
    <body>
        <h1>RPGの戦闘フォーム</h1>
        <p><%= (String)request.getAttribute("message") %></p>

        <% String playerList = (String)request.getAttribute("playerList"); %>
        <% String[] players = playerList.split(","); %>

        <form action="show" method="post">
            <label for="name">プレイヤー</label>
            <select name="name">
            <% for (String player : players) { %>
                <option value="<%= player %>"><%= player %></option>
            <% } %>
            </select>
            <p></p>
            <button type="submit">たたかう</button>
        </form>
        
         <p></p>
        <form action="show" method="get">
            <button type="submit">にげる！</button>
        </form>
    </body>
</html>