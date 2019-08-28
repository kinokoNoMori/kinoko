<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= request.getAttribute("name") %></title>
    </head>
    
    <body style="background:#ffffff">
        <%-- http://www.htmq.com/html/indexm.shtml　--%>
        <h1>h1タグ</h1>
        <h2>h2タグ</h2>
        <h3>h3タグ</h3>
        <h4>h4タグ</h4>
        <h5>h5タグ</h5>
        <h6>h6タグ</h6>
        <p1>p1タグ</p1>

        
        
        
        
        <br>
        <p><a href="top">総合トップ</a></p>
    
    </body>
</html>

<%-- JSPタグの種 類--%>
<%-- <%@ javaコード %> JSPの宣言(ディレクティブ) --%>
<%-- <%! javaコード %> 変数やメソッドの宣言 --%>
<%-- <%= javaコード %> 式の評価結果を出力 --%>
<%-- <% javaコード %> コードを実行 --%>
<%-- javaコード --%><%-- コメント --%>