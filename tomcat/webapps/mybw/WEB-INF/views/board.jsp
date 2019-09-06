<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>BoardGame</title>
        <style>body {padding: 30px;}</style>
    </head>
    <body>
        <h1>囲碁/mybw/board</h1>
        <form action="board" method="post">
            <label for="y">縦</label>
            <input type="text" name="y">
            <p></p>
            <label for="x">横</label>
            <input type="text" name="x">
            <button type="submit">送信する</button>
        </form>

        <p></p>
        <table>
            <% String stones = request.getAttribute("board").toString(); %>
            <% String[] lines = stones.split("\n", 0); %>
            <% lines[1] = lines[1].substring(0,1)+'b'+lines[1].substring(1+1); %>
            <% for (String stone: lines) { %>
                 <p><%= stone %></p>
            <% } %>
        </table>
    </body>
</html>