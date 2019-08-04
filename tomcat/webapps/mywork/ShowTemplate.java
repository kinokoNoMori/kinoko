import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ShowTemplate extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {

            request.setAttribute("message", "Hello World!");//setAttribute(key,内容)
            
            String view = "/WEB-INF/views/index.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}