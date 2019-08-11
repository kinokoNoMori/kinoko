<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>自己紹介</title>
    </head>
    <body>
        <a href="selfintroduction">自己紹介トップに戻る</a>
        <a href="top">総合トップに戻る</a>
        <br>
        <a href="#tyo">~長所</a>
        <a href="#tan">~短所</a>
        <a href="#gakugan">~学生時代に頑張ったこと</a>
        <a href="#yarisigo">~やりたい仕事の系統</a>
        <a href="#mirai">~将来の展望</a>
        <p>------------------------------------------------------</p>
        <a name="top"></a>
        <h1>私について</h1>
        
        <br>
        <a name="tyo"></a>
        <h3>長所：</h3>
        <p><%= request.getAttribute("pros") %></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="tan"></a>
        <h3>短所：</h3>
        <p><%= request.getAttribute("cons") %></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="gakugan"></a>
        <h3>学生時代に頑張ったこと：</h3>
        <p><%= request.getAttribute("gakuseizidaiganbattakoto") %></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="yarisigo"></a>
        <h3>やりたい仕事の系統</h3>
        <p><%= request.getAttribute("service") %></p>
        <a href="#top">~このページの最上部</a>
        <br>
        <a name="mirai"></a>
        <h3>将来の展望：</h3>
        <p><%= request.getAttribute("future") %></p>
        
        <a href="#top">~このページの最上部</a>
        <p><a href="selfintroduction">自己紹介トップに戻る</a></p>
        <p><a href="top">総合トップに戻る</a></p>
    </body>
</html>