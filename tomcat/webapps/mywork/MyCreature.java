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
            String AA = "　メモ帳制作の練習・足がかりとして、書いたことが表示される単純な掲示板を作成しようと思った。";
            request.setAttribute("kikkake_board", AA);
            
            
            // 掲示板作成において気をつけたこと
            String A = "掲示板らしくするために、人名に敬称をつけようとした。<br>"+
            "　入力を受け取った時にその入力自体に敬称を足そうとしたところうまくいかず、試行錯誤した。<br>"+
            "　結果的には、投稿内容を保持しているファイルにデータを書き込む時に、<br>"+
            "敬称を付け足すことでうまくいった。";
            request.setAttribute("kodawari_board", A);
            
            //メモ帳製作のきっかけ
            String CC = "　スマホやPC等についているメモ帳だと端末が違うと共有できないので、<br>"+
            "自分専用にアレンジされたONLINEで共有できるメモ帳が欲しかったので作成しようと思った";
            request.setAttribute("kikkake_memo", CC);
            
            
            // メモ作成において気をつけたこと
            String C = "　ひな形は掲示板と同じなのでそこでは時間はかからなかったが、<br>"+
            "日付順でのソートに一番時間がかかった。<br>"+
            "　日付を数値ではなく文字列として扱ってソートしたので、9月よりも10月の方が早く来てしまった。<br>"+
            "　それを解決するために、「１～１２月にアルファベットで順番を付け、表示するときはそれを外す」・<br>"+
            "「2文字目まで含めたソートをする」など、いろいろと試行錯誤をしてみたのですが、上手くいかなかった。<br>"+
            "　そこで、周りにあるものではどういうふうに扱っているのかと見渡してみると、<br>"+
            "1桁の数字には頭に0を付けていて、それだ！と思い、解決することができた。";
            request.setAttribute("kodawari_memo", C);
            
            
            
            
            //囲碁製作のきっかけ
            String BB = "　私は、数学科に在学しているのですが、純粋数学の授業が多く、<br>"+
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
            
            
                        
            //電卓のきっかけ
            String DD = "　スマホの電卓で4乗以上の計算が一発でできなかったので作りました。";
            request.setAttribute("kikkake_cal", DD);
            
            //電卓制作おいて気をつけたこと
            String D = "　スマホのキーボードから入力すると、演算子を打つためにキーボードの切り替える必要があり、<br>"+
            "面倒なので数字から演算子を分けられるようにした。<br>"+
            "　連続した2回目以降の計算では、前回の結果を用いて計算できるようにした。";
            request.setAttribute("kodawari_cal", D);
            
            
            
            //まとめ
            String kanso = "　物を作るうえで大切なことは、周りを見渡して、<br>"+
            "自分や周りの人間が何を欲しているかを考えることが重要だと思った。<br>"+
            "　コーディングが行き詰まったら、とりあえずリラックスするが大切だった。<br>"+
            "　一呼吸おかないと、気分的にも時間的にも、どんどん悪い方向になっていく事に気付いた。";
            request.setAttribute("matome", kanso);
            
            
            //paizaIOのURL
            String PiazaIO = "https://paiza.io/ja/projects/new";
            request.setAttribute("IO", PiazaIO);
            
            
            String view = "/WEB-INF/views/mycreature.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
