<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= request.getAttribute("name") %></title>
    </head>
    <body style="background:#ffffff">
        <p style="padding: 0.5em;/*文字周りの余白*/
            color: #494949;/*文字色*/
            background: #fffaf4;/*背景色*/
            border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top" style="background:#e6e6fa;">総合トップに戻る</a>
        <a href="mycreature">作品ページへ</a>
        <br>
        <a href="#code">~コード</a>
        
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= request.getAttribute("name") %>
        </h1>
        <a name="top"></a>
        
         
        
        <a name="code"></a>
        <table border=5; bordercolor="#e6e6fa">
            <tr><td>
            <%= request.getAttribute("code") %>
            </td></tr>
            <p>実行コマンド<br>~/kinoko/memo$ python igo.py</p>
        </table>
        <br>
        <a href="#TOP">~ページ最上部</a>
        <p><a href="top">総合トップに戻る</a></p>
    </body>
</html>