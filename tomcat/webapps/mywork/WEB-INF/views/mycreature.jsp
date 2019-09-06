<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>作品（コードのみ）</title>
    </head>
    
    <body style="background:#ffffff">
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップに戻る</a>
        <a name="top"></a>
        <br>
        <a href="#io">~paizaIOのURL</a>
        <a href="#igo_python">~囲碁のPythonコード</a>
        
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        作品（コードのみ）</h1>
        
        <a name="io"></a>    
        <h2>PaizaIOのURL</h2>
        <p><%= request.getAttribute("IO") %></p>
        <a href=<%= request.getAttribute("IO") %> target="_blank">PaizaIO</a>

        <br>
        <a name="igo_python"></a>
        <h2>囲碁のPythonコード</h2>
        <table border=5; bordercolor="#e6e6fa">
            <tr><td>
            <p><%= request.getAttribute("igo_py") %></p>
            </td></tr>
        </table>
        <br>
        
        <p><a href="top">総合トップ</a></p>
    
    </body>
</html>

