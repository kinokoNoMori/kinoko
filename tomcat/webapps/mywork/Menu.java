import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Menu extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String view = "/WEB-INF/views/menu.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}