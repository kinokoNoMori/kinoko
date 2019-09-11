import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MyCreature extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
        
            // pythonの囲碁のコード
            String Igo = "pythonの囲碁のコード";
            request.setAttribute("igo_py", Igo);
            
            //製作のきっかけ
            String AA = "　自分専用にアレンジされたメモ帳が欲しかったので、それの練習・足がかりとして、<br>"+
            "書いたことが表示される単純な掲示板を作成しようと思った。";
            request.setAttribute("kikkake_board", AA);
            
            
            // 掲示板作成において気をつけたこと
            String A = "掲示板らしくするために、人名に敬称をつけようとした。<br>"+
            "　入力を受け取った時にその入力自体に敬称を足そうとしたところうまくいかず、試行錯誤した"+
            "　結果的には、投稿内容を保持しているファイルにデータを書き込む時に、<br>"+
            "敬称を付け足すことでうまくいった。";
            request.setAttribute("kodawari_board", A);
            
            
            
            //囲碁製作のきっかけ
            String BB = "　私は、数学科に在学しているのですが、<br>"+
            "コーディング関連の授業や課題等の数が少なく、あっても基本文法だけ触れて終わる程度で、<br>"+
            "自分の技術を示せす方法がなかったので、自分自身どのようなものが作れるのかわかりませんでした。<br>"+
            "なので、自分がどれだけの能力があるかを知るために、初心者向けという囲碁を作ることにしました。";
            request.setAttribute("kikkake_igo", BB);
            
            //囲碁作成において気をつけたこと
            String B = "　裏返す石を探す方向をベクトルを使った。<br>"+
            "数学科特有の良い発想だと思っていたが、<br>"+
            "蟻本等アルゴリズム関連の本や記事にはありふれていて、軽いショック・・・<br>"+
            "　色毎に書いていたら長くなるので配列に色を押し込み、<br>"+
            "ターンから置く色を割り出すようにして、コードを短くした。<br>"+
            "　また、メソッドを使うことでもゲームを進行するメインメソッドを短くできた。<br>"+
            "　次は再起等のアルゴリズムを使って色を変える処理を書きたい。";
            request.setAttribute("kodawari_igo", B);
            
            
            
            //paizaIOのURL
            String PiazaIO = "https://paiza.io/ja/projects/new";
            request.setAttribute("IO", PiazaIO);
            
            
            String view = "/WEB-INF/views/mycreature.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
