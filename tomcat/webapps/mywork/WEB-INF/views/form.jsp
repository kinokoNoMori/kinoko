<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>board</title>
    </head>
    <body style="background:#ffffff">
        <a name="top"></a>
        
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップに戻る</a><br>
        
        
        <% String message = (String)request.getAttribute("message");%>
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= message %></h1>
        <form action="result" method="post" >
            <label for="name">名前</label>
            <input type="text" name="userName">
            <p></p>
            <label for="article">投稿</label>
            <input type="text" name="article">
            <button type="submit">送信する</button>
        </form>
        
        <p></p>
        <table>
            <tr><th>名前</th><th>投稿</th></tr>
            <% String articles = request.getAttribute("articles").toString(); %>
            <% String[] lines = articles.split("\n", 0); %>
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
        <br>
        <a href="top">総合トップに戻る</a><br>
    </body>
</html>
