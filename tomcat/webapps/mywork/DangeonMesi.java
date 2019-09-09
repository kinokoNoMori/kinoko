import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DangeonMesi extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{

        String title = "ダンジョン飯";
        request.setAttribute("name", title);
        
        String genre = "ギャグ";
        request.setAttribute("genre", genre);
        
        request.setAttribute("message", "");

        String view = "/WEB-INF/views/comics.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}