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
            "　ポジションはボランチです。";
            request.setAttribute("soccer", Soccer);
        
            String Commic = "　漫画が好きです。<br>"+
            "　特に、ワールドトリガーが好きで、単行本では待ちきれず、<br>"+
            "連載誌であるジャンプSQを買って読んでいます。";
            request.setAttribute("com", Commic);
            
            String Game = "　ゲームが好きです。<br>"+
            "メイプルストーリーというMMOを何年か続けていています。";
            request.setAttribute("game", Game);
            
            
            String view = "/WEB-INF/views/myhobbies.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
