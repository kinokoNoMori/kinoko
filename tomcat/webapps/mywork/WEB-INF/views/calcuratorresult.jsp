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
        <a href="top">総合トップ</a><a>＞</a>
        <a href="mycreature">作成物</a><a>＞</a>
        <a href="calcuratorform">計算機</a><a>＞</a>
        <a>計算結果</a><a>＜</a>
        <a href="mylanguages">学習した言語ページ</a>
        <br>
        <a href="#topBoard">~計算機の最上段へ</a>
        <br>
        
        <a name="top"></a>
    
        <% String message = (String)request.getAttribute("message");%>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);"><%= message %></h2>
        <% String xx = (String)request.getAttribute("x"); %>
        <% String ope = (String)request.getAttribute("operator"); %>
        <% String yy = (String)request.getAttribute("y"); %>
        
        <h1><%= xx %></h1>
        
        <% 
        double a = Double.parseDouble(xx);
        double b = Double.parseDouble(yy);
        int o = Integer.parseInt(ope);
        double ans = 0;
        String Ope = "";
        %>
        <% if(o==0){
            ans = a + b;
            Ope = " + ";
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
        } else{
            Ope = " 演算子は0~4で選択してください ";
        }
        %>
        
        <p>
        <%= a %><%= Ope %><%= b %>=
        </p>
        <h2>
        <%= ans %>
        </h2>
        <a href="#topBoard">~~計算を続ける</a>
        <a href="calcuratorform">~~計算機に戻る</a></p>
        
        <!-- -->
        <a name="topBoard"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">計算機</h2>
        <ul>
        <li>0 => +</li>
        <li>1 => -</li>
        <li>2 => x</li>
        <li>3 => /</li>
        <li>4 => ^</li>
        </ul>
        <form action="calcuratorresult" method="post" >
        <table>
            <tr>
            <th><label for="x">X</label></th>
            <th><label for="operator">演算記号</label></th>
            <th><label for="y">Y</label></th>
            </tr>
            <tr>
            <td><input type="text" name="x" value=<%= ans %> placeholder=<%= ans %>></td>
            <td><input type="text" name="operator"></td>
            <td><input type="text" name="y"></td>
            </tr>
        </table>
        <button type="submit">計算する</button>
        </form>
        <!-- -->
        
        
        <br>
        
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップ</a><a>＞</a>
        <a href="mycreature">作成物</a><a>＞</a>
        <a href="calcuratorform">計算機</a><a>＞</a>
        <a>計算結果</a><a>＜</a>
        <a href="mylanguages">学習した言語ページ</a>
        <br>
        <a href="#top">~ページ最上段へ</a><br>
        
        
    </body>
</html>
