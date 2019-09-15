<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>書き込み完了</title>
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
        <% String day = (String)request.getAttribute("day"); %>
        <% String time = (String)request.getAttribute("time"); %>
        
        <p>日付:<%= day %></p>
        <p>内容:<%= article %></p>
        <p>時間:<%= time %></p>
        <a href="memoform">戻る</a></p>
        <META http-equiv="Refresh" content="1;URL=memoform">
        <br>
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップに戻る</a></p>
        </form>
    </body>
</html>
