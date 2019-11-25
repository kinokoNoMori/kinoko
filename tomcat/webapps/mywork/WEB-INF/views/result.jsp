<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>投稿完了</title>
    </head>
    <body style="background:#ffffff">
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップに戻る</a><br>
    
        <% String message = (String)request.getAttribute("message");%>
        <h1><%= message %></h1>
        <% String article = (String)request.getAttribute("article"); %>
        <% String userName = (String)request.getAttribute("userName"); %>
        
        <p>名前:<%= userName %></p>
        <p>投稿:<%= article %></p>
        <a href="form">戻る</a></p>
        <META http-equiv="Refresh" content="1;URL=form">
        <br>
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップに戻る</a></p>
        </form>
    </body>
</html>
