import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MyHobbies extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String myhobbies[] = {"サッカー", "ゲーム", "漫画を読む"};
            request.setAttribute("myhobbies", myhobbies);
        
            String view = "/WEB-INF/views/myhobbies.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
