<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>電卓</title>
    </head>
    <body style="background:#ffffff">
        <a name="top"></a>
        

        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップ</a><a>＞</a>
        <a href="mycreature">作成物</a><a>＞</a>
        <a>計算機</a><!-- <a>＜</a>
        <a href="mylanguages">学習した言語ページ</a> -->
        <br>
        <a href="#topBoard">~計算機の最上段へ</a><br>
        </p>
        
        
        <% String message = (String)request.getAttribute("message");%>
        <h1 style="color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;">
        <%= message %></h1>
        <a name="topBoard"></a>
        <h2 style ="background: linear-gradient(transparent 70%, #a7d6ff 70%);">計算機</h2>
        
        <!--
        <ul>
        <li>0 => +</li>
        <li>1 => -</li>
        <li>2 => x</li>
        <li>3 => /</li>
        <li>4 => ^</li>
        </ul>
        -->
        
        <form action="calcuratorresult" method="post" >
        <table>
            <tr>
            <th><label for="x">X</label></th>
            <th><label for="operator">演算記号</label></th>
            <th><label for="y">Y</label></th>
            </tr>
            <tr>
            <td><input type="text" name="x"></td>
            <td>
            <select type="text" name="operator">
                <option value="0">＋</option>
                <option value="1">ー</option>
                <option value="2">×</option>
                <option value="3">÷</option>
                <option value="4">^累乗</option>
            </select>
            </td>
            <!-- <td><input type="text" name="operator"></td> -->
            <td><input type="text" name="y"></td>
            </tr>
        </table>
        <button type="submit">計算する</button>
        </form>
        
        <p></p>

        <a href="#topBoard">~<%= message %>の最上段へ</a><br>
        
        <br>
        <p style="padding: 0.5em;/*文字周りの余白*/
        color: #494949;/*文字色*/
        background: #fffaf4;/*背景色*/
        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/">
        <a href="top">総合トップ</a><a>＞</a>
        <a href="mycreature">作成物</a><a>＞</a>
        <a>計算機</a><!--<a>＜</a>
         <a href="mylanguages">学習した言語ページ</a> -->
        <br>
        <a href="#topBoard">~計算機の最上段へ</a><br>
        </p>
        
    </body>
</html>
