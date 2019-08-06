import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class KimiToBoku extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{

        String title = "君と僕。";
        request.setAttribute("name", title);
        
        String genre = "青春系";
        request.setAttribute("genre", genre);

        String view = "/WEB-INF/views/comics.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}