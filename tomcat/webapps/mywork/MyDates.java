import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MyDates extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String title = "自己紹介";
            request.setAttribute("name", title);
            
            
            String  tyosyo = "　私の長所は行動力だと思っています。<br>"+
                "　たとえば、アルバイトで人手不足が深刻になった時に、"+
                "店舗独自のマニュアルを作ったり、"+
                "アルバイト募集のポスターを作ったりして解決を図ろうとしました。";
            request.setAttribute("pros", tyosyo);
            
            String  tansyo = "　私の短所は1つの期間1つのことにしか手が付けられないことです。<br>"+
                "　たとえば、今日は数学のテスト勉強をすると決めたら、1日全部を数学に費やしてしまい、"+
                "結果バランスがうまく取れなくなってしまいました。<br>"+
                "　なので、タイマーを使って時間を強制的に区切るようにしました。<br>"+
                "　しかし、それでやることを切り替えても、前のことが頭に残り、次のことに集中できませんでした。<br>"+
                "そのため今度は、時間で区切るのではなく進行状況で区切るように変えてみました。<br>"+
                "　すると、うまく切り替えることができたので、"+
                "キリが良いと納得できる場所の設置量を調整することで、長時間を避けることができました。";
            request.setAttribute("cons", tansyo);
            
            String gakuseiganbari = "　私はコンビニでのアルバイトを頑張り、コミュニケーションの大切さを学びました。<br>"+
                "　たとえば、短い作業であっても、完了したかどうか、途中ならどこまでやったかを"+
                "お互いに報告しあい、手伝いがいるかどうかを確かめたりや、得意不得意を知ることで"+
                "適材適所の配置に変えることができるようになり、作業の効率を上げることができました。<br>"+
                "　さらにコミュ―にケーションを増やすことによって,"+
                "従業員同士の仲が良くなり、すぐに辞めていく人の割合が減り、"+
                "人手不足が問題になっている中、乗り切ることができました。";
            request.setAttribute("gakuseizidaiganbattakoto", gakuseiganbari);
            
            
            //web系用
            String sev = "　webアプリ開発がしたいです。<br>"+
                "　現在、様々なOSやハードが存在しているので、それぞれに特化したものを作るよりも、"+
                "IPhoneやAndroid,pc,携帯型ゲーム機などといった、様々なアクセス方法がある"+
                "ウェブサーバー上のサービスの方が汎用性が高く、需要が伸びると考えているからです。<br>"+
                "　しかし、スマホが当たり前の時代なのでスマホに特化したアプリ等をつくることも経験したいと思っています";
            request.setAttribute("service", sev);
            
            //セキュリティ系用
            String sev2 = "　私は、学校で情報セキュリティの授業を取っています。<br>"+
                "　その授業では、情報を守る手段や漏れ方、引き出す手段が紹介されていました。<br>"+
                "　現在、インターネットを当たり前のように利用していますが、<br>"+
                "その陰では、様々な攻撃に対する防衛策がなされていると思います。<br>"+
                "　そんな陰から生活を支えているところに魅力を感じ、興味を持ちました。<br>";
            request.setAttribute("security", sev2);
            
            
            // どういうエンジニアになりたいか
            String mirai = "　私は、プログラミングのことをほとんど独学で学んできました。<br>"+
            "なので、まずは研修で基本的な技術や知識を学び、情報系の学校を出た人達に追いつきたいと思います。<br>"+
            "そこからは、チームでの仕事を学び、少しずつ引っ張ってもらう側から引っ張っていく側に代わっていきたいです。<br>"+
            "　また、ウェブサイトの制作だけでなく、システムの構築や保守など、<br>"+
            "こなすことのできる仕事の範囲やスキルを増やしていくことで、社内での自分の価値を高めたいです。。<br>";
            request.setAttribute("future", mirai);
            
            
            
            
            String view = "/WEB-INF/views/mydates.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
