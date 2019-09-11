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
        <a href="top">総合トップ</a><a>＞</a>
        <a href="mycreature">作成物</a><a>＞</a>
        <a>掲示板</a><a>＜</a>
        <a href="mylanguages">学習した言語ページ</a>
        <br>
        <a href="#command">~実行コマンド</a>
        <a href="#code">~コード</a>
        </p>
        
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= request.getAttribute("name") %>
        </h1>
        <a name="top"></a>
        
         
        
        <a name="command"></a>
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">実行コマンド</h3>
        <p>~/kinoko/memo$ python igo.py</p>
        <br>    
        <a name="code"></a>
        <h3 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">コード</h3>
        <table border=5; bordercolor="#e6e6fa">
            <tr><td>
            <%= request.getAttribute("code") %>
            </td></tr>
        </table>
        <br>
        
        <a href="#TOP">~ページ最上部</a>
        <p style="padding: 0.5em;/*文字周りの余白*/
            color: #494949;/*文字色*/
            background: #fffaf4;/*背景色*/
            border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップ</a><a>＞</a>
        <a href="mycreature">作成物</a><a>＞</a>
        <a>掲示板</a><a>＜</a>
        <a href="mylanguages">学習した言語ページ</a>
        </p>
    </body>
</html>