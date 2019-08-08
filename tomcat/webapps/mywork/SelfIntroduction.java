import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SelfIntroduction extends HttpServlet {

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
        
            String view = "/WEB-INF/views/mydates.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
