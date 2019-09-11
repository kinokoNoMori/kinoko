import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Rireki extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String title = "自己紹介";
            request.setAttribute("name", title);
            
            String name = "田中太郎";
            request.setAttribute("name", name);
            
            int age = 23;
            request.setAttribute("age", age);
            
            String birthday = "96年05月22日";
            request.setAttribute("birthday", birthday);
            
            String languages[] = { "Python", "Java" };
            request.setAttribute("languages", languages);
            
            
            String highschool = "柏の葉高校";
            request.setAttribute("highschool", highschool);
            
            String  university = "城西大学";
            request.setAttribute("university", university);
            
            String tagu = "<p style=\"padding: 0.5em;color: #494949;background: #fffaf4;border-left: solid 5px #ffaf58;\">"+
            "<a href=\"top\">総合トップ</a><a>＞</a><a href=\"selfintroduction\">自己紹介</a><a>＞</a><a>履歴書</a><br>";
            request.setAttribute("tag", tagu);
        
        
        
        
        
        String view = "/WEB-INF/views/rireki.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
