<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= request.getAttribute("name") %>のレビュー</title>
    </head>
    <body>
        <a name="top"></a>
        <a href="review" style="background:#0000ff ;color:#99FFFF;">メニューに戻る</a>
        <a href="top">総合トップに戻る</a><br>
        <a href="#INFO">~基本情報</a>
        <a href="#ara">~あらすじ</a>
        <a href="#kanso">~感想</a><br>
        <p>--------------------------------------------------------------------</p>
        <h1><%= request.getAttribute("name") %></h1>
        <p>--------------------------------------------------------------------</p>
        <a name="INFO"></a>
        <h3>基本情報</h3>
        <table>
        <tr>
        <td>
        連載誌：<%= request.getAttribute("serial") %>
        </td>
        </tr>
        <tr>
        <td>
        作者　：<%= request.getAttribute("author") %>
        </td>
        </tr>
        <tr>
        <td>
        ジャンル：<%= request.getAttribute("genre") %>
        </td>
        </tr>
        </table>
        <a href="#top">ページ最上部へ</a>
        <p>--------------------------------------------------------------------</p>
        <a name="ara"></a>
        <h3>あらすじ</h3>
        <p><%= request.getAttribute("synopsis") %></p>
        <a href="#top">ページ最上部へ</a>
        <p>--------------------------------------------------------------------</p>
        <a name="kanso"></a>
        <h3>感想</h3>
        <p><%= request.getAttribute("message") %></p>
        <a href="#top">ページ最上部へ</a>
        <p>--------------------------------------------------------------------</p>
        

        <br>
        <p><a href="review">メニューに戻る</a></p>
        <p><a href="top">総合トップに戻る</a></p>
    </body>
</html>