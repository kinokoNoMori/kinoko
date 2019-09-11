import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MyHobbies extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String myhobbies[] = {"サッカー", "ゲーム", "漫画を読む"};
            request.setAttribute("myhobbies", myhobbies);
        
            String Soccer = "　サッカーをやっています。<br>"+
            "　社会人チームに属し、リーグにも出場します。<br>"+
            "　ポジションはボランチで、広い視野を持ち、素早く判断し、処理することが得意です。<br>"+
            "　また、全体のバランスをみて、ポジションをスライドさせることもあるので、<br>"+
            "守備的ポジションとはいえ、比較的オールラウンダーなタイプだと思います。";
            request.setAttribute("soccer", Soccer);
        
            String Commic = "　漫画が好きです。<br>"+
            "　特に、ワールドトリガーが好きで、単行本では待ちきれず、<br>"+
            "連載誌であるジャンプSQを買って読んでいます。<br>"+
            "ジャンプSQは、ワールドトリガー以外にも、面白い作品がいっぱいあるのでお勧めです。";
            request.setAttribute("com", Commic);
            
            String Game = "　ゲームが好きです。<br>"+
            "　とあるキノコのMMOを何年も続けていて、同一職業・サーバー内でのレベルランキング最高順位が１位で、<br>"+
            "ものを極めることに関しては、長期的に努力し続けられるタイプです。";
            request.setAttribute("game", Game);
            
            
            String view = "/WEB-INF/views/myhobbies.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
