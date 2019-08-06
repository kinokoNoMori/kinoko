import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MineCraft extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{

        String title = "マインクラフト";
        request.setAttribute("name", title);
        
        String genre = "オープンワールド自由自由";
        request.setAttribute("genre", genre);
        
        String hard = "PC・PS・SWICH・...";
        request.setAttribute("hard", hard);

        String view = "/WEB-INF/views/games.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}