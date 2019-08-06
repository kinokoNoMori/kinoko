import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HtmlTest extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{

        String title = "HTMLの表記";
        request.setAttribute("name", title);
        
        String genre = "テスト";
        request.setAttribute("genre", genre);

        String view = "/WEB-INF/views/html.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}