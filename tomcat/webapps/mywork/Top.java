import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Top extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String title = "総合トップ";
            request.setAttribute("name", title);
            request.setAttribute("message", title + "");
        
            String view = "/WEB-INF/views/top.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
