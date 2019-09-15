<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>計算結果</title>
    </head>
    <body style="background:#ffffff">
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップに戻る</a><br>
    
        <% String message = (String)request.getAttribute("message");%>
        <h1><%= message %></h1>
        <% String x = (String)request.getAttribute("x"); %>
        <% String ope = (String)request.getAttribute("operator"); %>
        <% String y = (String)request.getAttribute("y"); %>
        <% 
        double a = Double.parseDouble(x);
        double b = Double.parseDouble(y);
        int o = Integer.parseInt(ope);
        double ans = 0;
        String Ope = "";
        %>
        <% if(o==0){
            ans = a + b;
            Ope = " - ";
        }else if(o==1){
            ans = a - b;
            Ope = " - ";
        }else if(o==2){
            ans = a * b;
            Ope = " x ";
        }else if(o==3){
            ans = a / b;
            Ope = " ÷ ";
        }else if(o==4){
            ans = java.lang.Math.pow(a, b);
            Ope = " ^ ";
        } 
        %>
        
        <p>
        <%= a %><%= Ope %><%= b %>=
        </p>
        <h2>
        <%= ans %>
        </h2>
        

        <a href="calcuratorform">戻る</a></p>
        <br>
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップに戻る</a></p>
        </form>
    </body>
</html>
