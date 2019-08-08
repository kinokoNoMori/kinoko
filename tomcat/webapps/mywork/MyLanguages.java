import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MyLanguages extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String languages[] = { "C", "Python", "Java" };
            request.setAttribute("languages", languages);
        
            String view = "/WEB-INF/views/mylanguages.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
