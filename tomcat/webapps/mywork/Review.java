import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Review extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String view = "/WEB-INF/views/review.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}